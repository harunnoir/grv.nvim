local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.CmpItemAbbrMatch = { fg = c.green[1], bold = true }
  highlights.CmpItemAbbrMatchFuzzy = { fg = c.green[1], bold = true }
  highlights.CmpItemAbbr = 'Fg'
  highlights.CmpItemAbbrDeprecated = 'Grey'
  highlights.CmpItemMenu = 'Fg'
  highlights.CmpItemKind = 'Yellow'
  for _, kind in ipairs(vim.g.grv_lsp_kind_color or {}) do
    vim.api.nvim_set_hl(0, 'CmpItemKind' .. kind[1], { link = kind[2], default = true })
  end
  return highlights
end

return M
