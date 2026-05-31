local M = {}

function M.get(c, opts)
  local highlights = {}

  -- vim-lsp
  highlights.LspErrorVirtualText = 'VirtualTextError'
  highlights.LspWarningVirtualText = 'VirtualTextWarning'
  highlights.LspInformationVirtualText = 'VirtualTextInfo'
  highlights.LspHintVirtualText = 'VirtualTextHint'
  highlights.LspErrorHighlight = 'ErrorText'
  highlights.LspWarningHighlight = 'WarningText'
  highlights.LspInformationHighlight = 'InfoText'
  highlights.LspHintHighlight = 'HintText'
  highlights.lspReference = 'CurrentWord'
  highlights.lspInlayHintsType = 'InlayHints'
  highlights.lspInlayHintsParameter = 'InlayHints'

  return highlights
end

return M
