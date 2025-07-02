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
      if_name_for_blocks = if_name if if_name in ip_block.reg_blocks else next(iter(ip_block.reg_blocks.keys()))
      rb = ip_block.reg_blocks[if_name_for_blocks]
%>\

// ${node['name']} (${module["type"]})
// - ${f'0x{base_addr:08x}'}
<%
      if_name_for_base = "__" + if_name.upper() if if_name and len(module['base_addrs']) > 1 else ''
      name = f'{instance_name}__{ip_block.name.upper()}{if_name_for_base}__BASE'
%>\
${f'#define {prefix}{name:64} 0x{base_addr:08x}u'}
%     for r in rb.flat_regs + rb.windows:
<%
        addr = base_addr + r.offset
        name = f'{instance_name}__{ip_block.name.upper()}_{r.name.upper()}'
        line = f'#define {prefix}{name:64} 0x{addr:08x}u'
%>\
${line}
%     endfor ## flat_regs + windows
%   endfor ## node
% endfor ## xbar
