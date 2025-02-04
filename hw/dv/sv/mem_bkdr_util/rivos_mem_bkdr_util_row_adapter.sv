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
  protected uint32_t width;

  protected uint32_t bits_per_subword;
  protected uint32_t subwords_per_row;
  protected uint32_t mem_addr_lsb;

  // Translates a raw read UVM data raw from the memory in a contigious
  // row of memory.
  //
  function new(unsigned depth, longint unsigned n_bits, 
               mem_bkdr_util_pkg::err_detection_e err_detection_scheme,
               uint32_t redundant_bits_per_entry,
               uint32_t extra_bits_per_subword = 0);
    import prim_secded_pkg::prim_secded_e;
    import prim_secded_pkg::get_ecc_data_width;
    import prim_secded_pkg::get_ecc_parity_width;

    uint32_t data_width, byte_width, bytes_per_word;
    uint32_t non_ecc_bits_per_subword, ecc_bits_per_subword, bits_per_subword;

    prim_secded_e secded_eds = prim_secded_e'(err_detection_scheme);
    non_ecc_bits_per_subword = get_ecc_data_width(secded_eds);
    ecc_bits_per_subword     = get_ecc_parity_width(secded_eds);
    bits_per_subword         = non_ecc_bits_per_subword + ecc_bits_per_subword +
                               extra_bits_per_subword;

    this.num_extra_bits = redundant_bits_per_entry;

    width            = (n_bits / depth) - redundant_bits_per_entry;
    subwords_per_row = (width + bits_per_subword - 1) / bits_per_subword;
    data_width = subwords_per_row * non_ecc_bits_per_subword;
    byte_width = 8;
    bytes_per_word = data_width / byte_width;
    mem_addr_lsb = $clog2(bytes_per_word);
  endfunction

  virtual function uvm_hdl_data_t read_row(uvm_hdl_data_t read_data);
    uvm_hdl_data_t data;
    for (int subword_idx = 0; subword_idx < subwords_per_row; subword_idx++) begin
      for (int b = 0; b < bits_per_subword; b++) begin
        int true_col_pos;
        int intrlv_col_pos;
        intrlv_col_pos     = (subword_idx + (((b * 4) + 1) * 4));
        true_col_pos       = (subword_idx * bits_per_subword) + b;
        data[true_col_pos] = read_data[intrlv_col_pos];
      end
    end
    return data;
  endfunction

  // Translates a contigious UVM data row to the internal organzation of a row
  // that can be written to the memory.
  //
  virtual function uvm_hdl_data_t write_row(uvm_hdl_data_t write_data);
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

  // Writes a 39 bit word into the row data depending on the memory architecture
  virtual function uvm_hdl_data_t access_row_data39(bit [bus_params_pkg::BUS_AW-1:0] addr,
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

  
endclass
