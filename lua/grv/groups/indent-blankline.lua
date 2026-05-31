local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.IblScope = { fg = c.grey1[1], nocombine = true }
  highlights.IblIndent = { fg = c.bg5[1], nocombine = true }
  highlights.IndentBlanklineContextChar = 'IblScope'
  highlights.IndentBlanklineChar = 'IblIndent'
  return highlights
end

return M
