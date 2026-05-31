local M = {}

function M.get(c, opts)
  local highlights = {}

  -- ale
  highlights.ALEError = 'ErrorText'
  highlights.ALEWarning = 'WarningText'
  highlights.ALEInfo = 'InfoText'
  highlights.ALEErrorSign = 'RedSign'
  highlights.ALEWarningSign = 'YellowSign'
  highlights.ALEInfoSign = 'BlueSign'
  highlights.ALEErrorLine = 'ErrorLine'
  highlights.ALEWarningLine = 'WarningLine'
  highlights.ALEInfoLine = 'InfoLine'
  highlights.ALEVirtualTextError = 'VirtualTextError'
  highlights.ALEVirtualTextWarning = 'VirtualTextWarning'
  highlights.ALEVirtualTextInfo = 'VirtualTextInfo'
  highlights.ALEVirtualTextStyleError = 'VirtualTextHint'
  highlights.ALEVirtualTextStyleWarning = 'VirtualTextHint'

  return highlights
end

return M
