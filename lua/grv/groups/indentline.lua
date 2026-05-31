local M = {}

function M.get(c, opts)
  local highlights = {}

  if opts.ui_contrast == 'low' then
    vim.g.indentLine_color_gui = c.bg5[1]
    vim.g.indentLine_color_term = c.bg5[2]
  else
    vim.g.indentLine_color_gui = c.grey0[1]
    vim.g.indentLine_color_term = c.grey0[2]
  end

  return highlights
end

return M
