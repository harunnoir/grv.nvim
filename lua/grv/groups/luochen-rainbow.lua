local M = {}

function M.get(c, opts)
  local highlights = {}

  if not vim.g.rbpt_colorpairs then
    vim.g.rbpt_colorpairs = {
      { 'blue', c.blue[1] },
      { 'magenta', c.purple[1] },
      { 'red', c.red[1] },
      { '166', c.orange[1] },
    }
  end
  vim.g.rainbow_guifgs = { c.orange[1], c.red[1], c.purple[1], c.blue[1] }
  vim.g.rainbow_ctermfgs = { '166', 'red', 'magenta', 'blue' }
  if not vim.g.rainbow_conf then
    vim.g.rainbow_conf = {}
  end
  if vim.g.rainbow_conf.guifgs == nil then
    vim.g.rainbow_conf.guifgs = vim.g.rainbow_guifgs
  end
  if vim.g.rainbow_conf.ctermfgs == nil then
    vim.g.rainbow_conf.ctermfgs = vim.g.rainbow_ctermfgs
  end
  vim.g.niji_dark_colours = vim.g.rbpt_colorpairs
  vim.g.niji_light_colours = vim.g.rbpt_colorpairs

  return highlights
end

return M
