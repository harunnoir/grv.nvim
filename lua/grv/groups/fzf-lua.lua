local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.FzfLuaBorder = 'Grey'
  highlights.FzfLuaTitle = 'Title'
  return highlights
end

return M
