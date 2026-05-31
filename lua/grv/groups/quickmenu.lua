local M = {}

function M.get(c, opts)
  local highlights = {}

  -- quickmenu
  highlights.QuickmenuOption = 'Green'
  highlights.QuickmenuNumber = 'Red'
  highlights.QuickmenuBracket = 'Grey'
  highlights.QuickmenuHelp = 'Green'
  highlights.QuickmenuSpecial = 'Purple'
  highlights.QuickmenuHeader = 'Orange'

  return highlights
end

return M
