local M = {}

function M.get(c, opts)
  local highlights = {}

  -- syntastic
  highlights.SyntasticError = 'ErrorText'
  highlights.SyntasticWarning = 'WarningText'
  highlights.SyntasticErrorSign = 'RedSign'
  highlights.SyntasticWarningSign = 'YellowSign'
  highlights.SyntasticErrorLine = 'ErrorLine'
  highlights.SyntasticWarningLine = 'WarningLine'

  return highlights
end

return M
