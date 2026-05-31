local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.AerialLine = 'CursorLine'
  highlights.AerialGuide = 'LineNr'

  local lsp_kind_color = vim.g.grv_lsp_kind_color or {}
  for _, kind in ipairs(lsp_kind_color) do
    vim.api.nvim_set_hl(0, 'Aerial' .. kind[1] .. 'Icon', { link = kind[2], default = true })
  end

  return highlights
end

return M
