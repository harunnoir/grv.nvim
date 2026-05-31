local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.SignatureMarkText = 'BlueSign'
  highlights.SignatureMarkerText = 'PurpleSign'

  return highlights
end

return M
