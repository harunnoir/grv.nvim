local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.CtrlPMatch = { fg = c.green[1], bold = true }
  highlights.CtrlPPrtBase = { fg = c.bg4[1] }
  highlights.CtrlPLinePre = { fg = c.bg4[1] }
  highlights.CtrlPMode1 = { fg = c.blue[1], bg = c.bg4[1], bold = true }
  highlights.CtrlPMode2 = { fg = c.bg0[1], bg = c.blue[1], bold = true }
  highlights.CtrlPStats = { fg = c.grey2[1], bg = c.bg4[1], bold = true }
  highlights.CtrlPNoEntries = 'Red'
  highlights.CtrlPPrtCursor = 'Blue'

  return highlights
end

return M
