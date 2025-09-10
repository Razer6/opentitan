<%page args="ip_blocks, top, data"/>\
<%
prefix = data.get("prefix", "")
valid_addr_spaces = data.get("addr_spaces")
%>\
% for module in top["module"]:
  % for if_name in module['base_addrs'].keys():
<%
      instance_name = module['name']
      addr_space = next(iter(module['base_addrs'][if_name].keys()))
      base_addr = next(iter(module['base_addrs'][if_name].values()))
      base_addr = int(base_addr, 0)
      ip_block = ip_blocks[module["type"]]
      if_name_for_blocks = if_name if if_name in ip_block.reg_blocks else next(iter(ip_block.reg_blocks.keys()))
      rb = ip_block.reg_blocks[if_name_for_blocks]
      node_name = instance_name + ('.' + if_name if if_name != 'null' else '')
      if valid_addr_spaces and addr_space not in valid_addr_spaces:
        continue
%>\

// ${node_name} (${module["type"]})
// - ${f'0x{base_addr:08x}'}
<%
      if_name_for_base = "__" + if_name.upper() if if_name and if_name != 'null' and len(module['base_addrs']) > 1 else ''
      name = f'{instance_name}__{ip_block.name.upper()}{if_name_for_base}__BASE'
%>\
${f'#define {prefix}{name:64} 0x{base_addr:08x}u'}
    % for r in rb.flat_regs + rb.windows:
<%
        addr = base_addr + r.offset
        name = f'{instance_name}__{ip_block.name.upper()}_{r.name.upper()}'
        line = f'#define {prefix}{name:64} 0x{addr:08x}u'
%>\
${line}
    % endfor ## flat_regs + windows
  % endfor ## if_name
% endfor ## module
