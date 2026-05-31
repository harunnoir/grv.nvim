local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.GitSignsAdd = 'GreenSign'
  highlights.GitSignsChange = 'BlueSign'
  highlights.GitSignsDelete = 'RedSign'
  highlights.GitSignsAddNr = 'Green'
  highlights.GitSignsChangeNr = 'Blue'
  highlights.GitSignsDeleteNr = 'Red'
  highlights.GitSignsAddLn = 'DiffAdd'
  highlights.GitSignsChangeLn = 'DiffChange'
  highlights.GitSignsDeleteLn = 'DiffDelete'
  highlights.GitSignsCurrentLineBlame = 'Grey'
  return highlights
end

return M
