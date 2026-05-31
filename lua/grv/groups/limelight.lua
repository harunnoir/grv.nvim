local M = {}

function M.get(c, opts)
  local highlights = {}

  vim.g.limelight_conceal_ctermfg = c.grey0[2]
  vim.g.limelight_conceal_guifg = c.grey0[1]

  return highlights
end

return M
