local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.EasyMotionTarget = 'Search'
  highlights.EasyMotionShade = 'Grey'

  return highlights
end

return M
