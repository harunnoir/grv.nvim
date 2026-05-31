local M = {}

function M.get(c, opts)
  local highlights = {}

  -- yegappan/lsp
  highlights.LspDiagInlineError = 'ErrorText'
  highlights.LspDiagInlineWarning = 'WarningText'
  highlights.LspDiagInlineInfo = 'InfoText'
  highlights.LspDiagInlineHint = 'HintText'
  highlights.LspDiagSignErrorText = 'RedSign'
  highlights.LspDiagSignWarningText = 'YellowSign'
  highlights.LspDiagSignInfoText = 'BlueSign'
  highlights.LspDiagSignHintText = 'PurpleSign'
  highlights.LspDiagVirtualTextError = 'VirtualTextError'
  highlights.LspDiagVirtualTextWarning = 'VirtualTextWarning'
  highlights.LspDiagVirtualTextInfo = 'VirtualTextInfo'
  highlights.LspDiagVirtualTextHint = 'VirtualTextHint'
  highlights.LspInlayHintsParam = 'InlayHints'
  highlights.LspSigActiveParameter = 'DiffAdd'

  return highlights
end

return M
