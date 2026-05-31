local M = {}

function M.get(c, opts)
  local highlights = {}

  -- neo-tree.nvim
  if not opts.transparent_background then
    highlights.NeoTreeNormal = { fg = c.fg0[1], bg = c.bg_dim[1] }
    highlights.NeoTreeEndOfBuffer = { fg = c.bg_dim[1], bg = c.bg_dim[1] }
    highlights.NeoTreeVertSplit = { fg = c.bg0[1], bg = c.bg0[1] }
  end
  highlights.NeoTreeDirectoryIcon = 'Orange'
  highlights.NeoTreeGitAdded = 'Green'
  highlights.NeoTreeGitConflict = 'Yellow'
  highlights.NeoTreeGitDeleted = 'Red'
  highlights.NeoTreeGitIgnored = 'Grey'
  highlights.NeoTreeGitModified = 'Blue'
  highlights.NeoTreeGitUnstaged = 'Purple'
  highlights.NeoTreeGitUntracked = 'Fg'
  highlights.NeoTreeGitStaged = 'Purple'
  highlights.NeoTreeDimText = 'Grey'
  highlights.NeoTreeIndentMarker = 'NonText'
  highlights.NeoTreeNormalNC = 'NeoTreeNormal'
  highlights.NeoTreeSignColumn = 'NeoTreeNormal'
  highlights.NeoTreeRootName = 'Title'
  if vim.o.background == 'light' then
    highlights.NeoTreeCursorLine = { bg = c.bg0[1] }
  end

  return highlights
end

return M
