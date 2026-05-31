local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.WhichKey = 'Red'
  highlights.WhichKeySeperator = 'Green'
  highlights.WhichKeyGroup = 'Yellow'
  highlights.WhichKeyDesc = 'Blue'

  return highlights
end

return M
