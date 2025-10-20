#!/usr/bin/env python3
# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only

"""
Secret Scanner Tool

A tool to scan directories for secret files and verify their security properties.
Uses fd for efficient file scanning in NFS environments and checks file permissions
and encryption status based on SOPS configuration.
"""

import argparse
import fnmatch
import json
import logging
import os
import re
import stat
import subprocess
import sys
import yaml
from pathlib import Path
from typing import List, Dict, Tuple


class SecretScanner:
    """Main class for scanning directories for secret files."""

    def __init__(self, config_file: str = "scanner.yml"):
        """Initialize the scanner with configuration file."""
        self.logger = logging.getLogger(__name__)
        self.config_file = config_file
        self.config = self._load_config()
        self.sops_patterns = self._load_sops_patterns()
        self.additional_patterns = self.config.get("additional_patterns", [])

        if not self.sops_patterns and not self.additional_patterns:
            self.logger.error("No patterns found. Nothing to scan.")
            sys.exit(1)

        self.combined_pattern = self._compute_combined_pattern(self.sops_patterns,
                                                               self.additional_patterns)
        self.logger.info(f"Combined regex pattern: {self.combined_pattern}")
        self.violations = []
        self.scanned_files = 0

    def _load_config(self) -> Dict:
        """Load scanner configuration from YAML file."""
        config_path = Path(self.config_file)
        if not config_path.exists():
            self.logger.error(f"Configuration file '{self.config_file}' not found.")
            self.logger.error("Please create a scanner.yml file with the directories to scan.")
            sys.exit(1)

        try:
            with open(config_path, "r") as f:
                return yaml.safe_load(f)
        except yaml.YAMLError as e:
            self.logger.error(f"Error parsing configuration file: {e}")
            sys.exit(1)
        except OSError as e:
            self.logger.error(f"Error loading configuration file: {e}")
            sys.exit(1)

    def _load_sops_patterns(self) -> List[str]:
        """Load SOPS file patterns from .sops.yaml file."""
        sops_file_path = self.config.get('sops_config_file')
        if not sops_file_path:
            self.logger.error("No SOPS config file specified in the configuration file.")
            sys.exit(1)
        sops_file = Path(sops_file_path)
        if not sops_file.exists():
            self.logger.error(f"SOPS config file '{sops_file_path}' not found. "
                              "No SOPS patterns will be used.")
            sys.exit(1)

        try:
            with open(sops_file, "r") as f:
                sops_config = yaml.safe_load(f)

            patterns = []
            for rule in sops_config["creation_rules"]:
                patterns.append(rule["path_regex"])
            return patterns
        except KeyError as e:
            self.logger.error("No 'creation_rules' or path_regex found in the SOPS "
                              f"config file: {e}")
            sys.exit(1)
        except (yaml.YAMLError, OSError) as e:
            self.logger.error(f"Could not load SOPS patterns: {e}")
            sys.exit(1)

    def _is_encrypted(self, file_path: str) -> bool:
        """Check if a file is SOPS encrypted by looking for sops metadata."""
        try:
            with open(file_path, "r") as f:
                content = f.read()

            # We only use binary file encryption, which yields a JSON file with a sops entry.
            try:
                data = json.loads(content)
                if isinstance(data, dict) and "sops" in data:
                    return isinstance(data["sops"], dict)
            except json.JSONDecodeError as e:
                self.logger.info(f"File {file_path} is not a valid JSON file: {e}")
                return False
            except (ValueError, KeyError) as e:
                self.logger.info(f"File {file_path} is not a an SOPS JSON file: {e}")
                return False
        except FileNotFoundError:
            self.logger.error(f"File not found at '{file_path}'")
            sys.exit(1)
        except OSError as e:
            self.logger.error(f"An unexpected error occurred: {e}")
            sys.exit(1)

    def _check_file_permissions(self, file_path: str) -> Tuple[bool, str]:
        """Check if file has proper permissions (no group or other access)."""
        try:
            stat_info = os.stat(file_path)
            mode = stat_info.st_mode

            # Check if file has any permissions for group or others
            if mode & (stat.S_IRWXG | stat.S_IRWXO):
                return (False,
                        f"File has group/other permissions (mode: {oct(mode)[-3:]})")

            return True, "Permissions OK"
        except OSError as e:
            return False, f"Could not check permissions: {e}"

    def _compute_combined_pattern(self,
                                  sops_patterns: List[str],
                                  additional_patterns: List[str]) -> str:
        """Combine all patterns into a single regex using alternation.

        Note, the combined pattern only operates on the filename, not the full path as fd
        can only match against the filename. The results of fd are then filtered to match the
        full path.
        """
        all_patterns = []

        # Process SOPS patterns (extract filename from full path)
        for pattern in sops_patterns:
            # Extract just the filename part (after the last slash)
            filename = pattern.split("/")[-1]
            # Escape dots and other special characters
            escaped_filename = re.escape(filename)
            all_patterns.append(escaped_filename)

        # Process additional patterns (convert glob to regex)
        for pattern in additional_patterns:
            # Convert glob pattern to regex
            # Replace * with .* and escape other special characters
            regex_pattern = pattern.replace("*", ".*")
            # Escape dots and other special characters, but not the .* we just added
            regex_pattern = re.escape(regex_pattern).replace(r"\*", ".*")
            all_patterns.append(regex_pattern)

        # Combine all patterns with alternation
        combined_pattern = "|".join(f"({pattern})" for pattern in all_patterns)
        return combined_pattern

    def _scan_directory_with_fd(self, directory: str) -> List[str]:
        """Use fd command to efficiently scan directory for files matching patterns."""
        try:
            # Build fd command with regex pattern
            cmd = ["fd", "--type", "f", "--hidden", "--no-ignore",
                   "--regex", self.combined_pattern, directory]

            # Log the fd command being executed
            self.logger.info(f"Running fd command: {' '.join(cmd)}")

            # Run fd command
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=300)

            if result.returncode != 0:
                self.logger.error(f"fd command failed: {result.stderr}")
                sys.exit(1)

            files = result.stdout.strip().split("\n")
            all_files = [f for f in files if f]  # Remove empty strings

            # Filter files to match exact patterns of the full path. The combined regex only
            # operates on the filename, not the full path as fd can only match against the filename.
            matching_files = []
            for file_path in all_files:
                matched = False

                # Check against SOPS patterns (exact path matching)
                for pattern in self.sops_patterns:
                    if file_path.endswith(pattern):
                        matching_files.append(file_path)
                        matched = True
                        break

                # Check against additional patterns (glob matching)
                if not matched:
                    for pattern in self.additional_patterns:
                        if (fnmatch.fnmatch(file_path, pattern) or
                           fnmatch.fnmatch(os.path.basename(file_path), pattern)):
                            matching_files.append(file_path)
                            matched = True
                            break

            self.logger.info(f"Found {len(matching_files)} "
                             f"files matching patterns: {matching_files}")
            return matching_files

        except subprocess.TimeoutExpired:
            self.logger.error(f"fd command timed out for directory {directory}")
            sys.exit(1)
        except (OSError, subprocess.SubprocessError) as e:
            self.logger.error(f"Error running fd command: {e}")
            sys.exit(1)

    def _scan_files(self) -> List[str]:
        """Scan all configured directories for files matching patterns."""
        all_files = []

        if not self.sops_patterns and not self.additional_patterns:
            self.logger.warning("No patterns found. Nothing to scan.")
            return []

        for directory in self.config.get("scan_directories", []):
            if not directory or not os.path.exists(directory):
                self.logger.warning(f"Directory \"{directory}\" does not exist, skipping.")
                continue

            self.logger.info(f"Scanning directory: {directory}")
            files = self._scan_directory_with_fd(directory)

            all_files.extend(files)
            self.logger.info(f"Found {len(files)} files matching patterns in {directory}")

        return all_files

    def _check_file(self, file_path: str) -> Dict:
        """Check a single file for security violations."""
        result = {
            "file": file_path,
            "is_encrypted": False,
            "permissions_ok": False,
            "violations": []
        }

        # Check if encrypted
        if self._is_encrypted(file_path):
            result["is_encrypted"] = True
            result["permissions_ok"] = True  # Encrypted files don't need permission checks
            self.logger.info(f"File is readable and encrypted: {file_path}")
        else:
            # File is not encrypted, check if permissions are correct
            perm_ok, perm_msg = self._check_file_permissions(file_path)
            result["permissions_ok"] = perm_ok

            if not perm_ok:
                # File is not encrypted AND has wrong permissions - this is a violation
                result["violations"].append(f"Permission violation: {perm_msg}")
            # If file is not encrypted but has correct permissions, no violation
        return result

    def scan(self) -> int:
        """Main scan method. Returns number of violations found."""
        self.logger.info("Starting secret file scan...")
        self.logger.info(f"SOPS patterns loaded: {len(self.sops_patterns)}")
        self.logger.info(f"Additional patterns loaded: {len(self.additional_patterns)}")

        # Initialize counters
        self.scanned_files = 0
        self.encrypted_files = 0
        self.unencrypted_files = 0
        self.permission_violations = 0
        self.violations = []

        files = self._scan_files()
        self.scanned_files = len(files)
        self.logger.info(f"Total files to check: {self.scanned_files}")

        if self.scanned_files == 0:
            self.logger.info("No files found to scan.")
            self._print_final_report()
            return 0

        violations_count = 0
        for file_path in files:
            result = self._check_file(file_path)

            if result["is_encrypted"]:
                self.encrypted_files += 1
            else:
                self.unencrypted_files += 1

            if result["violations"]:
                self.violations.append(result)
                violations_count += len(result["violations"])
                self.permission_violations += len(result["violations"])

        self._print_final_report()

        return violations_count

    def _print_final_report(self):
        """Print comprehensive final report with statistics and summary."""
        self.logger.info("=" * 80)
        self.logger.info("SECRET SCANNER FINAL REPORT")
        self.logger.info("=" * 80)

        self.logger.info(f"Total files scanned: {self.scanned_files}")
        self.logger.info(f"SOPS patterns loaded: {len(self.sops_patterns)}")
        self.logger.info(f"Additional patterns loaded: {len(self.additional_patterns)}")

        if self.scanned_files == 0:
            self.logger.info("No files found matching patterns.")
            return

        self.logger.info(f"Encrypted files: {self.encrypted_files}")
        self.logger.info(f"Unencrypted files: {self.unencrypted_files}")

        secure_files = self.encrypted_files + (self.unencrypted_files - len(self.violations))
        insecure_files = len(self.violations)

        self.logger.info(f"Secure files: {secure_files}")
        self.logger.info(f"Insecure files: {insecure_files}")

        self.logger.info(f"Total violations: {self.permission_violations}")

        if self.violations:
            self.logger.info("")
            self.logger.info("VIOLATIONS FOUND:")
            self.logger.info("-" * 40)
            for i, violation in enumerate(self.violations, 1):
                file_path = violation["file"]
                self.logger.info(f"{i}. {file_path}")
                for v in violation["violations"]:
                    self.logger.info(f"   - {v}")
        else:
            self.logger.info("")
            self.logger.info("✓ NO SECURITY VIOLATIONS FOUND")
            self.logger.info("All secret files are properly secured "
                             "(encrypted or correct permissions)")
        self.logger.info("")
        self.logger.info("SUMMARY:")
        if self.permission_violations == 0:
            self.logger.info("✓ All secret files are properly secured")
        else:
            self.logger.info(f"!!! {self.permission_violations} security violations need attention")

        self.logger.info("=" * 80)


def main():
    """Main entry point."""
    parser = argparse.ArgumentParser(
        description="Scan directories for secret files and verify security properties"
    )
    parser.add_argument(
        "--config", "-c",
        default="scanner.yml",
        help="Configuration file path (default: scanner.yml)"
    )
    parser.add_argument(
        "--verbose", "-v",
        action="store_true",
        help="Enable verbose output"
    )

    args = parser.parse_args()

    log_level = logging.DEBUG if args.verbose else logging.INFO
    logging.basicConfig(
        level=log_level,
        format="%(asctime)s - %(levelname)s - %(message)s",
        datefmt="%Y-%m-%d %H:%M:%S"
    )
    logger = logging.getLogger(__name__)

    script_dir = Path(__file__).parent
    os.chdir(script_dir)

    scanner = SecretScanner(args.config)

    try:
        violations = scanner.scan()

        if violations > 0:
            sys.exit(1)
        else:
            sys.exit(0)

    except KeyboardInterrupt:
        logger.info("Scan interrupted by user.")
        sys.exit(1)
    except (OSError, yaml.YAMLError, subprocess.SubprocessError) as e:
        logger.error(f"Error during scan: {e}")
        sys.exit(1)


if __name__ == '__main__':
    main()
