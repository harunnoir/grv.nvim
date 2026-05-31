local M = {}

function M.get(c, opts)
  local highlights = {}

  if vim.g.indent_guides_auto_colors == 0 then
    highlights.IndentGuidesOdd = { fg = c.bg0[1], bg = c.bg2[1] }
    highlights.IndentGuidesEven = { fg = c.bg0[1], bg = c.bg3[1] }
  end

  return highlights
end

return M
