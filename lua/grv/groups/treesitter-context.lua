local M = {}

function M.get(c, opts)
  local highlights = {}

  -- nvim-treesitter-context
  highlights.TreesitterContext = { fg = c.fg1[1], bg = c.bg3[1] }
  if opts.dim_inactive_windows and not opts.transparent_background and opts.sign_column_background ~= 'linenr' then
    if opts.ui_contrast == 'low' then
      highlights.TreesitterContextLineNumber = { fg = c.bg5[1], bg = c.bg0[1] }
    else
      highlights.TreesitterContextLineNumber = { fg = c.grey0[1], bg = c.bg0[1] }
    end
  end

  return highlights
end

return M
