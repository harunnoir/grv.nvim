local M = {}

function M.get(c, opts)
  local highlights = {}

  -- nerdtree
  highlights.NERDTreeDir = 'Green'
  highlights.NERDTreeDirSlash = 'Aqua'
  highlights.NERDTreeOpenable = 'Orange'
  highlights.NERDTreeClosable = 'Orange'
  highlights.NERDTreeFile = 'Fg'
  highlights.NERDTreeExecFile = 'Yellow'
  highlights.NERDTreeUp = 'Grey'
  highlights.NERDTreeCWD = 'Aqua'
  highlights.NERDTreeHelp = 'LightGrey'
  highlights.NERDTreeToggleOn = 'Green'
  highlights.NERDTreeToggleOff = 'Red'
  highlights.NERDTreeFlags = 'Orange'

  return highlights
end

return M
