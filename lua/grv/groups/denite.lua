local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.deniteMatchedChar = { fg = c.green[1], bold = true }
  highlights.deniteMatchedRange = { fg = c.green[1], bold = true, underline = true }
  highlights.deniteInput = { fg = c.green[1], bg = c.bg4[1], bold = true }
  highlights.deniteStatusLineNumber = { fg = c.purple[1], bg = c.bg4[1] }
  highlights.deniteStatusLinePath = { fg = c.fg0[1], bg = c.bg4[1] }
  highlights.deniteSelectedLin = 'Green'

  return highlights
end

return M
