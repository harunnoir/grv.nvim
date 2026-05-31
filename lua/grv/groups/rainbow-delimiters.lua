local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.RainbowDelimiterRed = 'Red'
  highlights.RainbowDelimiterYellow = 'Yellow'
  highlights.RainbowDelimiterBlue = 'Blue'
  highlights.RainbowDelimiterOrange = 'Orange'
  highlights.RainbowDelimiterGreen = 'Green'
  highlights.RainbowDelimiterViolet = 'Purple'
  highlights.RainbowDelimiterCyan = 'Aqua'

  return highlights
end

return M
