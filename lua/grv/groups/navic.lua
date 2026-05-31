local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.NavicText = 'Fg'
  highlights.NavicSeparator = 'Grey'
  for _, kind in ipairs(vim.g.grv_lsp_kind_color or {}) do
    vim.api.nvim_set_hl(0, 'NavicIcons' .. kind[1], { link = kind[2], default = true })
  end
  return highlights
end

return M
