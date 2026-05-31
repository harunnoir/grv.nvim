local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.HopNextKey = { fg = c.orange[1], bold = true }
  highlights.HopNextKey1 = { fg = c.green[1], bold = true }
  highlights.HopNextKey2 = 'Green'
  highlights.HopUnmatched = 'Grey'
  return highlights
end

return M
