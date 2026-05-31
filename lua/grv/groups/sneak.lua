local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.SneakLabelMask = { fg = c.bg_green[1], bg = c.bg_green[1] }
  highlights.Sneak = 'Search'
  highlights.SneakLabel = 'Search'
  highlights.SneakScope = 'DiffText'

  return highlights
end

return M
