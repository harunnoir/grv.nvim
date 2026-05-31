local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.TelescopeMatching = { fg = c.green[1], bold = true }
  highlights.TelescopeBorder = 'Grey'
  highlights.TelescopePromptPrefix = 'Orange'
  highlights.TelescopeSelection = 'DiffAdd'
  return highlights
end

return M
