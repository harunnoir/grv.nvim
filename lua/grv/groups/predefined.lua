local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.Fg    = { fg = c.fg0[1] }
  highlights.Grey  = { fg = c.grey0[1] }
  highlights.Grey1 = { fg = c.grey1[1] }
  highlights.Grey2 = { fg = c.grey2[1] }
  highlights.Red = { fg = c.red[1] }
  highlights.Orange = { fg = c.orange[1] }
  highlights.Yellow = { fg = c.yellow[1] }
  highlights.Green = { fg = c.green[1] }
  highlights.Aqua = { fg = c.aqua[1] }
  highlights.Blue = { fg = c.blue[1] }
  highlights.Purple = { fg = c.purple[1] }
  highlights.Bold = { bold = true }

  if opts.enable_italic then
    highlights.RedItalic = { fg = c.red[1], italic = true }
    highlights.OrangeItalic = { fg = c.orange[1], italic = true }
    highlights.YellowItalic = { fg = c.yellow[1], italic = true }
    highlights.GreenItalic = { fg = c.green[1], italic = true }
    highlights.AquaItalic = { fg = c.aqua[1], italic = true }
    highlights.BlueItalic = { fg = c.blue[1], italic = true }
    highlights.PurpleItalic = { fg = c.purple[1], italic = true }
  else
    highlights.RedItalic = { fg = c.red[1] }
    highlights.OrangeItalic = { fg = c.orange[1] }
    highlights.YellowItalic = { fg = c.yellow[1] }
    highlights.GreenItalic = { fg = c.green[1] }
    highlights.AquaItalic = { fg = c.aqua[1] }
    highlights.BlueItalic = { fg = c.blue[1] }
    highlights.PurpleItalic = { fg = c.purple[1] }
  end

  if opts.enable_bold then
    highlights.RedBold = { fg = c.red[1], bold = true }
    highlights.OrangeBold = { fg = c.orange[1], bold = true }
    highlights.YellowBold = { fg = c.yellow[1], bold = true }
    highlights.GreenBold = { fg = c.green[1], bold = true }
    highlights.AquaBold = { fg = c.aqua[1], bold = true }
    highlights.BlueBold = { fg = c.blue[1], bold = true }
    highlights.PurpleBold = { fg = c.purple[1], bold = true }
  else
    highlights.RedBold = { fg = c.red[1] }
    highlights.OrangeBold = { fg = c.orange[1] }
    highlights.YellowBold = { fg = c.yellow[1] }
    highlights.GreenBold = { fg = c.green[1] }
    highlights.AquaBold = { fg = c.aqua[1] }
    highlights.BlueBold = { fg = c.blue[1] }
    highlights.PurpleBold = { fg = c.purple[1] }
  end

  if opts.transparent_background ~= 0 or opts.sign_column_background == 'none' then
    highlights.RedSign = { fg = c.red[1] }
    highlights.OrangeSign = { fg = c.orange[1] }
    highlights.YellowSign = { fg = c.yellow[1] }
    highlights.GreenSign = { fg = c.green[1] }
    highlights.AquaSign = { fg = c.aqua[1] }
    highlights.BlueSign = { fg = c.blue[1] }
    highlights.PurpleSign = { fg = c.purple[1] }
  else
    highlights.RedSign = { fg = c.red[1], bg = c.bg2[1] }
    highlights.OrangeSign = { fg = c.orange[1], bg = c.bg2[1] }
    highlights.YellowSign = { fg = c.yellow[1], bg = c.bg2[1] }
    highlights.GreenSign = { fg = c.green[1], bg = c.bg2[1] }
    highlights.AquaSign = { fg = c.aqua[1], bg = c.bg2[1] }
    highlights.BlueSign = { fg = c.blue[1], bg = c.bg2[1] }
    highlights.PurpleSign = { fg = c.purple[1], bg = c.bg2[1] }
  end

  highlights.Added = 'Green'
  highlights.Removed = 'Red'
  highlights.Changed = 'Blue'

  -- LSP kind colors
  local lsp_kind_color = {
    { 'Array', 'Aqua' },
    { 'Boolean', 'Yellow' },
    { 'Class', 'Red' },
    { 'Color', 'Aqua' },
    { 'Constant', 'Purple' },
    { 'Constructor', 'Yellow' },
    { 'Default', 'Aqua' },
    { 'Enum', 'Yellow' },
    { 'EnumMember', 'Purple' },
    { 'Event', 'Orange' },
    { 'Field', 'Green' },
    { 'File', 'Green' },
    { 'Folder', 'Aqua' },
    { 'Function', 'Fg' },
    { 'Interface', 'Yellow' },
    { 'Key', 'Red' },
    { 'Keyword', 'Red' },
    { 'Method', 'Fg' },
    { 'Module', 'YellowItalic' },
    { 'Namespace', 'YellowItalic' },
    { 'Null', 'Aqua' },
    { 'Number', 'Yellow' },
    { 'Object', 'Aqua' },
    { 'Operator', 'Orange' },
    { 'Package', 'Purple' },
    { 'Property', 'Blue' },
    { 'Reference', 'Aqua' },
    { 'Snippet', 'Aqua' },
    { 'String', 'Aqua' },
    { 'Struct', 'Yellow' },
    { 'Text', 'Fg' },
    { 'TypeParameter', 'Yellow' },
    { 'Unit', 'Purple' },
    { 'Value', 'Purple' },
    { 'Variable', 'Fg' },
  }

  vim.g.grv_lsp_kind_color = lsp_kind_color

  return highlights
end

return M
