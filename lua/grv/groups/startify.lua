local M = {}

function M.get(c, opts)
  local highlights = {}

  -- startify
  highlights.StartifyBracket = 'Grey'
  highlights.StartifyFile = 'Fg'
  highlights.StartifyNumber = 'Red'
  highlights.StartifyPath = 'Green'
  highlights.StartifySlash = 'Green'
  highlights.StartifySection = 'Yellow'
  highlights.StartifyHeader = 'Orange'
  highlights.StartifySpecial = 'Grey'
  highlights.StartifyFooter = 'Grey'

  return highlights
end

return M
