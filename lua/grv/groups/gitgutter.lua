local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.GitGutterAdd = 'GreenSign'
  highlights.GitGutterChange = 'BlueSign'
  highlights.GitGutterDelete = 'RedSign'
  highlights.GitGutterChangeDelete = 'PurpleSign'
  highlights.GitGutterAddLine = 'DiffAdd'
  highlights.GitGutterChangeLine = 'DiffChange'
  highlights.GitGutterDeleteLine = 'DiffDelete'
  highlights.GitGutterChangeDeleteLine = 'DiffChange'
  highlights.GitGutterAddLineNr = 'Green'
  highlights.GitGutterChangeLineNr = 'Blue'
  highlights.GitGutterDeleteLineNr = 'Red'
  highlights.GitGutterChangeDeleteLineNr = 'Purple'

  return highlights
end

return M
