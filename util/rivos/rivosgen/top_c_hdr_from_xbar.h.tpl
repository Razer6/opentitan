<%page args="ip_blocks, top, data"/>\
<%
prefix = data.get("prefix", "")
%>\
<%
instances = {}
for module in top["module"]:
  instances[module["name"]] = module
%>\
% for xbar in top["xbar"]:

// xbar: ${xbar['name']} ${[node['name'] for node in xbar["nodes"]]}
%   for node in xbar["nodes"]:
<%
      if node['type'] == 'host' or node['xbar']:
        continue
%>\
<%
      instance_name = node['name']
      if_name = None
      if '.' in instance_name:
        instance_name, if_name = node['name'].split('.')
      module = instances[instance_name]
      base_addr = next(iter(module['base_addrs']['null' if not if_name else if_name].values()))
      base_addr = int(base_addr, 0)
      ip_block = ip_blocks[module["type"]]

      is_empty_reg_block_name = if_name not in ip_block.reg_blocks and (len(ip_block.reg_blocks) == 1 and if_name not in ip_block.memories)
      is_reg_block = if_name in ip_block.reg_blocks or is_empty_reg_block_name
      is_memory = if_name in ip_block.memories.keys()

      # Generate base address for both registers and memory
      if_name_for_base = "__" + if_name.upper() if if_name and not is_empty_reg_block_name and len(module['base_addrs']) > 1 else ''
      name = f'{instance_name}__{ip_block.name.upper()}{if_name_for_base}__BASE'
%>\

// ${node['name']} (${module["type"]})
// - ${f'0x{base_addr:08x}'}
${f'#define {prefix}{name:64} 0x{base_addr:08x}u'}
    % if is_reg_block:
<%
        if_name_for_blocks = if_name if if_name in ip_block.reg_blocks else next(iter(ip_block.reg_blocks.keys()))
        rb = ip_block.reg_blocks[if_name_for_blocks]
%>\
      % for r in rb.flat_regs:
<%
        addr = base_addr + r.offset
        name = f'{instance_name}__{ip_block.name.upper()}_{r.name.upper()}'
        line = f'#define {prefix}{name:64} 0x{addr:08x}u'
%>\
${line}
      % endfor
      % for w in rb.windows:
<%
          addr = base_addr + w.offset
          name = f'{instance_name}__{ip_block.name.upper()}_{w.name.upper()}'
          win_size_name = f'{name}__SIZE'
%>\
${f'#define {prefix}{name:64} 0x{addr:08x}u'}
${f'#define {prefix}{win_size_name:64} 0x{w.size_in_bytes:08x}u'}
      % endfor
    % elif is_memory:
<%
        mem = ip_block.memories[if_name]
        mem_size = int(module['memory'][if_name]['size'], 0)
%>\
      % if mem.windows:
        % for w in mem.windows:
<%
            size_name = f'{instance_name}__{ip_block.name.upper()}{if_name_for_base}__{w.name.upper()}_SIZE'
            size_addr = w.offset + w.size_in_bytes
%>\
${f'#define {prefix}{size_name:64} 0x{size_addr:08x}u'}
        % endfor
      % else:
<%
          # Generate size define for memory without windows
          size_name = f'{instance_name}__{ip_block.name.upper()}{if_name_for_base}__SIZE'
%>\
${f'#define {prefix}{size_name:64} 0x{mem_size:08x}u'}
      % endif
    % endif
%   endfor ## node
% endfor ## xbar
