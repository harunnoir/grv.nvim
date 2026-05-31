local M = {}

function M.get(c, opts)
  local highlights = {}

  -- undotree
  highlights.UndotreeSavedBig = { fg = c.purple[1], bold = true }
  highlights.UndotreeNode = 'Orange'
  highlights.UndotreeNodeCurrent = 'Red'
  highlights.UndotreeSeq = 'Green'
  highlights.UndotreeNext = 'Blue'
  highlights.UndotreeTimeStamp = 'Grey'
  highlights.UndotreeHead = 'Yellow'
  highlights.UndotreeBranch = 'Yellow'
  highlights.UndotreeCurrent = 'Aqua'
  highlights.UndotreeSavedSmall = 'Purple'

  return highlights
end

return M
