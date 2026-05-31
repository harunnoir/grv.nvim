local M = {}

function M.get(c, opts)
  local highlights = {}

  -- netrw
  highlights.netrwDir = 'Green'
  highlights.netrwClassify = 'Green'
  highlights.netrwLink = 'Grey'
  highlights.netrwSymLink = 'Fg'
  highlights.netrwExe = 'Yellow'
  highlights.netrwComment = 'Grey'
  highlights.netrwList = 'Aqua'
  highlights.netrwHelpCmd = 'Blue'
  highlights.netrwCmdSep = 'Grey'
  highlights.netrwVersion = 'Orange'

  return highlights
end

return M
