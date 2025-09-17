#!/bin/bash

# SPDX-FileCopyrightText: Copyright (c) 2025 by Rivos Inc.
# SPDX-License-Identifier: LicenseRef-Rivos-Internal-Only

# Shared security functions for scripts that handle sensitive files
# This library provides common security checks to prevent other users
# from reading sensitive files in shared NFS environments.

# Function to check directory permissions for security
check_directory_permissions() {
    local dir="$1"
    local dir_name="$2"
    
    # Get directory permissions
    local perms=$(stat -c "%a" "$dir" 2>/dev/null)
    if [ $? -ne 0 ]; then
        echo "Error: Cannot read permissions for $dir_name: $dir"
        return 1
    fi
    
    # Check if directory is readable by group or others
    # Permissions format: owner(3) group(3) others(3) in octal
    # We want to ensure group and others don't have read permission (4)
    local group_perms=$((perms % 100 / 10))
    local others_perms=$((perms % 10))
    
    # Check for read permission (4) or execute permission (1) in group/others
    # Note: For directories, execute permission is needed to access contents
    if [ $group_perms -ge 4 ] || [ $others_perms -ge 4 ]; then
        echo "Error: Security risk detected!"
        echo "  $dir_name ($dir) is readable by group or other users"
        echo "  Current permissions: $perms (owner:$((perms/100)) group:$group_perms others:$others_perms)"
        echo "  This could allow other users to read sensitive files in a shared NFS environment"
        echo ""
        echo "To fix this, run: chmod 700 $dir"
        echo "Or ensure you're working in a private directory"
        return 1
    fi
    
    echo "  ✓ $dir_name permissions are secure: $perms"
    return 0
}

# Function to check and set secure umask
check_umask() {
    local current_umask=$(umask)
    local secure_umask="077"  # rwx------ for files, rwx------ for directories
    
    if [ "$current_umask" != "$secure_umask" ]; then
        echo "Warning: Current umask ($current_umask) may create files readable by others"
        echo "  Setting umask to $secure_umask for this operation"
        umask "$secure_umask"
    else
        echo "  ✓ Umask is secure: $current_umask"
    fi
}

# Check the permissions of the current directory and the project root
perform_security_checks() {
    local project_root="$1"
    local current_dir="$2"
    
    echo "Performing security checks..."
    echo ""
    
    # Check current directory permissions
    if ! check_directory_permissions "$current_dir" "Current directory"; then
        return 1
    fi
    
    # Check project root permissions
    if ! check_directory_permissions "$project_root" "Project root"; then
        return 1
    fi
    
    # Check and set secure umask
    check_umask
    
    echo ""
    return 0
}
