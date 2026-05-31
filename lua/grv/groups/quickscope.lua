local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.QuickScopePrimary = { fg = c.aqua[1], underline = true }
  highlights.QuickScopeSecondary = { fg = c.blue[1], underline = true }

  return highlights
end

return M
