local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.TroubleText = 'Fg'
  highlights.TroubleSource = 'Grey'
  highlights.TroubleCode = 'Grey'
  return highlights
end

return M
