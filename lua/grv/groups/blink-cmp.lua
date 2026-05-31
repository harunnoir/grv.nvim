local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.BlinkCmpLabelMatch = { fg = c.green[1], bold = true }
  for _, kind in ipairs(vim.g.grv_lsp_kind_color or {}) do
    vim.api.nvim_set_hl(0, 'BlinkCmpKind' .. kind[1], { link = kind[2], default = true })
  end
  highlights.BlinkCmpMenu = { bg = c.bg1[1] }
  highlights.BlinkCmpMenuBorder = { fg = c.bg4[1], bg = c.bg1[1] }
  highlights.BlinkCmpDoc = { bg = c.bg1[1] }
  highlights.BlinkCmpDocBorder = { fg = c.bg4[1], bg = c.bg1[1] }
  return highlights
end

return M
