local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.InclineNormalNC = { fg = c.grey1[1], bg = c.bg3[1] }
  return highlights
end

return M
