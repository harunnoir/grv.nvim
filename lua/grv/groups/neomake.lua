local M = {}

function M.get(c, opts)
  local highlights = {}

  -- neomake
  highlights.NeomakeError = 'ErrorText'
  highlights.NeomakeWarning = 'WarningText'
  highlights.NeomakeInfo = 'InfoText'
  highlights.NeomakeMessage = 'HintText'
  highlights.NeomakeErrorSign = 'RedSign'
  highlights.NeomakeWarningSign = 'YellowSign'
  highlights.NeomakeInfoSign = 'BlueSign'
  highlights.NeomakeMessageSign = 'AquaSign'
  highlights.NeomakeVirtualtextError = 'VirtualTextError'
  highlights.NeomakeVirtualtextWarning = 'VirtualTextWarning'
  highlights.NeomakeVirtualtextInfo = 'VirtualTextInfo'
  highlights.NeomakeVirtualtextMessag = 'VirtualTextHint'

  return highlights
end

return M
