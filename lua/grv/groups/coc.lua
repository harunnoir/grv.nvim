local M = {}

function M.get(c, opts)
  local highlights = {}

  -- coc.nvim
  highlights.CocHoverRange = { bold = true, underline = true }
  highlights.CocSearch = { fg = c.green[1], bold = true }
  highlights.CocPumSearch = { fg = c.green[1], bold = true }
  highlights.CocMarkdownHeader = { fg = c.orange[1], bold = true }
  highlights.CocMarkdownLink = { fg = c.green[1], underline = true }
  highlights.CocMarkdownCode = 'Green'
  highlights.CocPumShortcut = 'Grey'
  highlights.CocPumVirtualText = 'Grey'
  highlights.CocPumMenu = 'Pmenu'
  highlights.CocMenuSel = 'PmenuSel'
  highlights.CocDisabled = 'Grey'
  highlights.CocSnippetVisual = 'DiffAdd'
  highlights.CocInlayHint = 'InlayHints'
  highlights.CocNotificationProgress = 'Green'
  highlights.CocNotificationButton = 'PmenuSel'
  highlights.CocErrorFloat = 'ErrorFloat'
  highlights.CocWarningFloat = 'WarningFloat'
  highlights.CocInfoFloat = 'InfoFloat'
  highlights.CocHintFloat = 'HintFloat'
  highlights.CocFloating = 'NormalFloat'
  highlights.CocFloatDividingLine = 'Grey'
  highlights.CocErrorHighlight = 'ErrorText'
  highlights.CocWarningHighlight = 'WarningText'
  highlights.CocInfoHighlight = 'InfoText'
  highlights.CocHintHighlight = 'HintText'
  highlights.CocHighlightText = 'CurrentWord'
  highlights.CocHoverRange = 'CurrentWord'
  highlights.CocErrorSign = 'RedSign'
  highlights.CocWarningSign = 'YellowSign'
  highlights.CocInfoSign = 'BlueSign'
  highlights.CocHintSign = 'PurpleSign'
  highlights.CocWarningVirtualText = 'VirtualTextWarning'
  highlights.CocErrorVirtualText = 'VirtualTextError'
  highlights.CocInfoVirtualText = 'VirtualTextInfo'
  highlights.CocHintVirtualText = 'VirtualTextHint'
  highlights.CocErrorLine = 'ErrorLine'
  highlights.CocWarningLine = 'WarningLine'
  highlights.CocInfoLine = 'InfoLine'
  highlights.CocHintLine = 'HintLine'
  highlights.CocCodeLens = 'Grey'
  highlights.CocFadeOut = 'Grey'
  highlights.CocStrikeThrough = 'Grey'
  highlights.CocListMode = 'StatusLine'
  highlights.CocListPath = 'StatusLine'
  highlights.CocSelectedText = 'Orange'
  highlights.CocListsLine = 'Fg'
  highlights.CocListsDesc = 'Grey'
  highlights.HighlightedyankRegion = 'Visual'
  highlights.CocGitAddedSign = 'GreenSign'
  highlights.CocGitChangeRemovedSign = 'PurpleSign'
  highlights.CocGitChangedSign = 'BlueSign'
  highlights.CocGitRemovedSign = 'RedSign'
  highlights.CocGitTopRemovedSign = 'RedSign'
  highlights.CocInlineVirtualText = 'Grey'

  local lsp_kind_color = vim.g.grv_lsp_kind_color or {}
  for _, kind in ipairs(lsp_kind_color) do
    vim.api.nvim_set_hl(0, 'CocSem' .. kind[1], { link = kind[2], default = true })
    vim.api.nvim_set_hl(0, 'CocSymbol' .. kind[1], { link = kind[2], default = true })
  end

  return highlights
end

return M
