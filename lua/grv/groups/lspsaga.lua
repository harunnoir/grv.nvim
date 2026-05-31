local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.LspFloatWinBorder = { fg = c.bg0[1], bg = c.bg0[1] }
  highlights.LspSagaDiagnosticHeader = { fg = c.orange[1], bold = true }
  highlights.LspSagaCodeActionTitle = { fg = c.purple[1], bold = true }
  highlights.DefinitionPreviewTitle = { fg = c.blue[1], bold = true }
  highlights.LspSagaDiagnosticError = 'Red'
  highlights.LspSagaDiagnosticWarn = 'Yellow'
  highlights.LspSagaDiagnosticInfo = 'Blue'
  highlights.LspSagaDiagnosticHint = 'Purple'
  highlights.LspSagaDiagnosticSource = 'Orange'
  highlights.LspSagaDiagnosticBorder = 'Orange'
  highlights.LspSagaRenameBorder = 'Purple'
  highlights.LspSagaRenamePromptPrefix = 'Blue'
  highlights.LspSagaCodeActionBorder = 'Purple'
  highlights.LspSagaCodeActionContent = 'Green'
  highlights.LspSagaHoverBorder = 'Green'
  highlights.LspSagaSignatureHelpBorder = 'Green'
  highlights.LspSagaDefPreviewBorder = 'Blue'
  highlights.DefinitionIcon = 'Blue'
  highlights.LspLinesDiagBorder = 'Yellow'
  highlights.DiagnosticWarning = 'DiagnosticWarn'
  highlights.DiagnosticInformation = 'DiagnosticInfo'
  highlights.ReferencesCount = 'Grey'
  highlights.DefinitionCount = 'Grey'
  highlights.TargetFileName = 'Grey'
  return highlights
end

return M
