local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.TelescopeMatching      = { fg = c.orange[1], bold = true }
  highlights.TelescopeBorder        = { fg = c.grey0[1] }
  highlights.TelescopePromptBorder  = { fg = c.grey0[1] }
  highlights.TelescopeResultsBorder = { fg = c.grey0[1] }
  highlights.TelescopePreviewBorder = { fg = c.grey0[1] }
  highlights.TelescopePromptPrefix  = { fg = c.orange[1] }
  highlights.TelescopePromptTitle   = { fg = c.orange[1], bold = true }
  highlights.TelescopeResultsTitle  = { fg = c.grey1[1] }
  highlights.TelescopePreviewTitle  = { fg = c.grey1[1] }
  highlights.TelescopeSelection     = { bg = c.bg_visual_yellow[1] }
  highlights.TelescopeSelectionCaret = { fg = c.orange[1], bg = c.bg_visual_yellow[1] }
  highlights.TelescopeNormal        = { fg = c.fg0[1] }
  highlights.TelescopePromptNormal  = { fg = c.fg1[1] }
  return highlights
end

return M
