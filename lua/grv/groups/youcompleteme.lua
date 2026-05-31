local M = {}

function M.get(c, opts)
  local highlights = {}

  -- YouCompleteMe
  highlights.YcmErrorSign = 'RedSign'
  highlights.YcmWarningSign = 'YellowSign'
  highlights.YcmErrorLine = 'ErrorLine'
  highlights.YcmWarningLine = 'WarningLine'
  highlights.YcmErrorSection = 'ErrorText'
  highlights.YcmWarningSection = 'WarningText'
  highlights.YcmInlayHint = 'InlayHints'
  highlights.YcmErrorText = 'VirtualTextError'
  highlights.YcmWarningText = 'VirtualTextWarning'

  return highlights
end

return M
