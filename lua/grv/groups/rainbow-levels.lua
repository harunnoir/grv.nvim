local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.RainbowLevel0 = 'Red'
  highlights.RainbowLevel1 = 'Orange'
  highlights.RainbowLevel2 = 'Yellow'
  highlights.RainbowLevel3 = 'Green'
  highlights.RainbowLevel4 = 'Aqua'
  highlights.RainbowLevel5 = 'Blue'
  highlights.RainbowLevel6 = 'Purple'
  highlights.RainbowLevel7 = 'Yellow'
  highlights.RainbowLevel8 = 'Green'

  return highlights
end

return M
