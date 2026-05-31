local M = {}

function M.get(c, opts)
  local highlights = {}

  -- nvim-tree.lua
  if not opts.transparent_background then
    highlights.NvimTreeNormal = { fg = c.fg0[1], bg = c.bg_dim[1] }
    highlights.NvimTreeEndOfBuffer = { fg = c.bg_dim[1], bg = c.bg_dim[1] }
    highlights.NvimTreeVertSplit = { fg = c.bg0[1], bg = c.bg0[1] }
    highlights.NvimTreeCursorLine = { bg = c.bg0[1] }
  end
  highlights.NvimTreeSymlink = 'Fg'
  highlights.NvimTreeFolderName = 'Green'
  highlights.NvimTreeRootFolder = 'Grey'
  highlights.NvimTreeFolderIcon = 'Orange'
  highlights.NvimTreeEmptyFolderName = 'Green'
  highlights.NvimTreeOpenedFolderName = 'Green'
  highlights.NvimTreeExecFile = 'Fg'
  highlights.NvimTreeOpenedHL = 'Fg'
  highlights.NvimTreeSpecialFile = 'Fg'
  highlights.NvimTreeImageFile = 'Fg'
  highlights.NvimTreeIndentMarker = 'Grey'
  highlights.NvimTreeGitDirtyIcon = 'Yellow'
  highlights.NvimTreeGitStagedIcon = 'Blue'
  highlights.NvimTreeGitMergeIcon = 'Orange'
  highlights.NvimTreeGitRenamedIcon = 'Purple'
  highlights.NvimTreeGitNewIcon = 'Aqua'
  highlights.NvimTreeGitDeletedIcon = 'Red'
  highlights.NvimTreeLspDiagnosticsError = 'RedSign'
  highlights.NvimTreeLspDiagnosticsWarning = 'YellowSign'
  highlights.NvimTreeLspDiagnosticsInformation = 'BlueSign'
  highlights.NvimTreeLspDiagnosticsHint = 'PurpleSign'

  return highlights
end

return M
