local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.IblScope = { fg = c.bg5[1], nocombine = true }   -- current scope slightly brighter
  highlights.IblIndent = { fg = c.bg3[1], nocombine = true }  -- almost invisible
  highlights.IndentBlanklineContextChar = 'IblScope'
  highlights.IndentBlanklineChar = 'IblIndent'
  return highlights
end

return M
