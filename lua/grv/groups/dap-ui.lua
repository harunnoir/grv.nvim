local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.DapUIModifiedValue = { fg = c.blue[1], bold = true }
  highlights.DapUIBreakpointsCurrentLine = { fg = c.blue[1], bold = true }
  highlights.DapUIScope = 'Blue'
  highlights.DapUIType = 'Purple'
  highlights.DapUIDecoration = 'Blue'
  highlights.DapUIThread = 'Green'
  highlights.DapUIStoppedThread = 'Blue'
  highlights.DapUISource = 'Purple'
  highlights.DapUILineNumber = 'Blue'
  highlights.DapUIFloatBorder = 'Blue'
  highlights.DapUIWatchesEmpty = 'Red'
  highlights.DapUIWatchesValue = 'Green'
  highlights.DapUIWatchesError = 'Red'
  highlights.DapUIBreakpointsPath = 'Blue'
  highlights.DapUIBreakpointsInfo = 'Green'
  return highlights
end

return M
