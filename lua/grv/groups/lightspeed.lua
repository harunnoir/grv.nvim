local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.LightspeedLabel = { fg = c.red[1], bold = true, underline = true }
  highlights.LightspeedLabelDistant = { fg = c.blue[1], bold = true, underline = true }
  highlights.LightspeedShortcut = { fg = c.bg0[1], bg = c.red[1], bold = true }
  highlights.LightspeedUnlabeledMatch = { fg = c.fg0[1], bold = true }
  highlights.LightspeedPendingOpArea = { fg = c.bg0[1], bg = c.green[1] }
  highlights.LightspeedMaskedChar = 'Purple'
  highlights.LightspeedGreyWash = 'Grey'
  return highlights
end

return M
