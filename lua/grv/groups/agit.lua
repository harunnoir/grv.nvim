local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.agitTree = 'Grey'
  highlights.agitDate = 'Green'
  highlights.agitRemote = 'Red'
  highlights.agitHead = 'Orange'
  highlights.agitRef = 'Aqua'
  highlights.agitTag = 'Orange'
  highlights.agitStatFile = 'Blue'
  highlights.agitStatRemoved = 'Red'
  highlights.agitStatAdded = 'Green'
  highlights.agitStatMessage = 'Orange'
  highlights.agitDiffRemove = 'Red'
  highlights.agitDiffAdd = 'Green'
  highlights.agitDiffHeader = 'Purple'

  return highlights
end

return M
