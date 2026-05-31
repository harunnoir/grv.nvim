local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.SignifySignAdd = 'GreenSign'
  highlights.SignifySignChange = 'BlueSign'
  highlights.SignifySignDelete = 'RedSign'
  highlights.SignifySignChangeDelete = 'PurpleSign'
  highlights.SignifyLineAdd = 'DiffAdd'
  highlights.SignifyLineChange = 'DiffChange'
  highlights.SignifyLineChangeDelete = 'DiffChange'
  highlights.SignifyLineDelete = 'DiffDelete'

  return highlights
end

return M
