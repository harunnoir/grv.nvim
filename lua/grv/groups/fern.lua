local M = {}

function M.get(c, opts)
  local highlights = {}

  -- fern.vim
  highlights.FernMarkedLine = 'Purple'
  highlights.FernMarkedText = 'Purple'
  highlights.FernRootSymbol = 'FernRootText'
  highlights.FernRootText = 'Orange'
  highlights.FernLeafSymbol = 'FernLeafText'
  highlights.FernLeafText = 'Fg'
  highlights.FernBranchSymbol = 'FernBranchText'
  highlights.FernBranchText = 'Green'

  return highlights
end

return M
