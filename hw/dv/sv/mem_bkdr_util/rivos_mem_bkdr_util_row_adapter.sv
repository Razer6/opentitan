// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

// Provide an abstract way to access the memory rows
//
// Integrators can subclass this to privide a specfic way of accessing a memory row
// and incorporate the phyical architecture.
//


class rivos_mem_bkdr_util_row_adapter extends mem_bkdr_util_row_adapter;
  // The width of the memory per row.
  uint32_t width;

  uint32_t bits_per_subword;
  uint32_t subwords_per_row;
  uint32_t mem_addr_lsb;

  // Translates a raw read UVM data raw from the memory in a contigious
  // row of memory.
  //
  function new(uint32_t depth, longint unsigned n_bits,
               mem_bkdr_util_pkg::err_detection_e err_detection_scheme,
               uint32_t redundant_bits_per_entry,
               uint32_t extra_bits_per_subword = 0);
    import prim_secded_pkg::prim_secded_e;
    import prim_secded_pkg::get_ecc_data_width;
    import prim_secded_pkg::get_ecc_parity_width;

    uint32_t data_width, byte_width, bytes_per_word;
    uint32_t non_ecc_bits_per_subword, ecc_bits_per_subword;

    prim_secded_e secded_eds = prim_secded_e'(err_detection_scheme);
    non_ecc_bits_per_subword = get_ecc_data_width(secded_eds);
    ecc_bits_per_subword     = get_ecc_parity_width(secded_eds);
    this.bits_per_subword    = non_ecc_bits_per_subword + ecc_bits_per_subword +
                               extra_bits_per_subword;

    this.num_extra_bits = redundant_bits_per_entry;

    this.width            = (n_bits / depth) - redundant_bits_per_entry;
    this.subwords_per_row = (this.width + this.bits_per_subword - 1) / this.bits_per_subword;
    data_width            = subwords_per_row * non_ecc_bits_per_subword;
    byte_width            = 8;
    bytes_per_word        = data_width / byte_width;
    this.mem_addr_lsb     = $clog2(bytes_per_word);
  endfunction

  virtual function uvm_hdl_data_t decode_row(uvm_hdl_data_t read_data);
    uvm_hdl_data_t raw_data, data;
    raw_data = read_data;
    for (int subword_idx = 0; subword_idx < subwords_per_row; subword_idx++) begin
      for (int b = 0; b < bits_per_subword; b++) begin
        int true_col_pos;
        int intrlv_col_pos;
        intrlv_col_pos     = (subword_idx + (((b * 4) + 1) * 4));
        true_col_pos       = (subword_idx * bits_per_subword) + b;
        data[true_col_pos] = raw_data[intrlv_col_pos];
      end
    end
    return data;
  endfunction

  // Translates a contigious UVM data row to the internal organzation of a row
  // that can be written to the memory.
  //
  virtual function uvm_hdl_data_t encode_row(uvm_hdl_data_t write_data);
    uvm_hdl_data_t data;
    for (int subword_idx = 0; subword_idx < subwords_per_row; subword_idx++) begin
      for (int b = 0; b < bits_per_subword; b++) begin
          int true_col_pos;
          int intrlv_col_pos;
          intrlv_col_pos       = (subword_idx + (((b * 4) + 1) * 4));
          true_col_pos         = (subword_idx * bits_per_subword) + b;
          data[intrlv_col_pos] = write_data[true_col_pos];
      end
    end
    return data;
  endfunction

  // Writes a 39 bit word into a decoded row data depending on the memory architecture

  // Given decoded `row_data`, a 39-bit `data` word to be written, and an address, return the
  // decoded row data with the data word at the correct position for the memory architecture and
  // the given address.
  virtual function uvm_hdl_data_t write_row_data_39b(bit [bus_params_pkg::BUS_AW-1:0] addr,
                                                     logic [38:0] data,
                                                     uvm_hdl_data_t row_data);
    uint32_t word_idx;
    uint32_t byte_idx;
    uint32_t subword_idx;

    word_idx    = addr >> mem_addr_lsb;
    byte_idx    = addr - (word_idx << mem_addr_lsb);
    subword_idx = byte_idx >> 2;
    row_data[subword_idx * 39 +:39] = data;
    return row_data;
  endfunction

  // Reads a 39 bit word from decoded row data depending on the memory architecture

  // Given decoded `row_data` and an address, return the 39-bit data from the correct position
  // for the memory architecture and the given address.
  virtual function logic [38:0] read_row_data_39b(bit [bus_params_pkg::BUS_AW-1:0] addr,
                                                  uvm_hdl_data_t row_data);
    uint32_t word_idx;
    uint32_t byte_idx;
    uint32_t subword_idx;

    // Each entry may have more than one subword chunk stored
    // So we get current data row and insert the new subword at the right location,
    // The modified data is then written back
    word_idx    = addr >> mem_addr_lsb;
    byte_idx    = addr - (word_idx << mem_addr_lsb);
    subword_idx = byte_idx >> 2;

    return row_data[subword_idx * 39 +:39];
  endfunction


endclass
