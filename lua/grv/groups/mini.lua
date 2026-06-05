local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.MiniAnimateCursor = { reverse = true, nocombine = true }
  if opts.float_style == 'dim' then
    highlights.MiniFilesTitle = { fg = c.grey0[1], bg = c.bg0[1] }
  elseif opts.float_style == 'blend' then
    if opts.transparent_background then
      highlights.MiniFilesTitle = 'Grey'
    else
      highlights.MiniFilesTitle = { fg = c.grey1[1], bg = c.bg1[1] }
    end
  else
    highlights.MiniFilesTitle = { fg = c.grey2[1], bg = c.bg5[1] }
  end
  highlights.MiniHipatternsFixme = { fg = c.bg0[1], bg = c.red[1], bold = true }
  highlights.MiniHipatternsHack = { fg = c.bg0[1], bg = c.yellow[1], bold = true }
  highlights.MiniHipatternsNote = { fg = c.bg0[1], bg = c.blue[1], bold = true }
  highlights.MiniHipatternsTodo = { fg = c.bg0[1], bg = c.green[1], bold = true }
  highlights.MiniIconsAzure = { fg = c.blue[1] }
  highlights.MiniIconsBlue = { fg = c.blue[1] }
  highlights.MiniIconsCyan = { fg = c.aqua[1] }
  highlights.MiniIconsGreen = { fg = c.green[1] }
  highlights.MiniIconsGrey = { fg = c.fg1[1] }
  highlights.MiniIconsOrange = { fg = c.orange[1] }
  highlights.MiniIconsPurple = { fg = c.purple[1] }
  highlights.MiniIconsRed = { fg = c.red[1] }
  highlights.MiniIconsYellow = { fg = c.yellow[1] }
  highlights.MiniJump2dSpot = { fg = c.orange[1], bold = true, nocombine = true }
  highlights.MiniJump2dSpotAhead = { fg = c.aqua[1], nocombine = true }
  highlights.MiniJump2dSpotUnique = { fg = c.yellow[1], bold = true, nocombine = true }
  highlights.MiniPickPrompt = 'NormalFloat'
  if opts.float_style == 'dim' then
    highlights.MiniPickPromptPrefix = { fg = c.orange[1], bg = c.bg_dim[1] }
    highlights.MiniPickPromptCaret = { fg = c.blue[1], bg = c.bg_dim[1] }
  elseif opts.float_style == 'blend' then
    if opts.transparent_background then
      highlights.MiniPickPromptPrefix = 'Orange'
      highlights.MiniPickPromptCaret = 'Blue'
    else
      highlights.MiniPickPromptPrefix = { fg = c.orange[1], bg = c.bg0[1] }
      highlights.MiniPickPromptCaret = { fg = c.blue[1], bg = c.bg0[1] }
    end
  else
    highlights.MiniPickPromptPrefix = { fg = c.orange[1], bg = c.bg3[1] }
    highlights.MiniPickPromptCaret = { fg = c.blue[1], bg = c.bg3[1] }
  end
  highlights.MiniStarterCurrent = { nocombine = true }
  highlights.MiniStatuslineDevinfo = { fg = c.grey2[1], bg = c.bg_statusline2[1] }
  highlights.MiniStatuslineFileinfo = { fg = c.grey2[1], bg = c.bg_statusline2[1] }
  highlights.MiniStatuslineFilename = { fg = c.grey2[1], bg = c.bg_statusline1[1] }
  highlights.MiniStatuslineInactive = { fg = c.grey2[1], bg = c.bg_statusline1[1] }
  highlights.MiniStatuslineModeCommand = { fg = c.bg0[1], bg = c.blue[1], bold = true }
  highlights.MiniStatuslineModeInsert = { fg = c.bg0[1], bg = c.bg_green[1], bold = true }
  highlights.MiniStatuslineModeNormal = { fg = c.bg0[1], bg = c.grey2[1], bold = true }
  highlights.MiniStatuslineModeOther = { fg = c.bg0[1], bg = c.purple[1], bold = true }
  highlights.MiniStatuslineModeReplace = { fg = c.bg0[1], bg = c.bg_yellow[1], bold = true }
  highlights.MiniStatuslineModeVisual = { fg = c.bg0[1], bg = c.bg_red[1], bold = true }
  highlights.MiniTablineCurrent = { fg = c.fg1[1], bg = c.bg5[1] }
  highlights.MiniTablineHidden = { fg = c.grey1[1], bg = c.bg3[1] }
  highlights.MiniTablineModifiedCurrent = { fg = c.blue[1], bg = c.bg5[1] }
  highlights.MiniTablineModifiedHidden = { fg = c.grey1[1], bg = c.bg3[1] }
  highlights.MiniTablineModifiedVisible = { fg = c.blue[1], bg = c.bg3[1] }
  highlights.MiniTablineTabpagesection = { fg = c.bg0[1], bg = c.grey2[1], bold = true }
  highlights.MiniTablineVisible = { fg = c.fg1[1], bg = c.bg3[1] }
  highlights.MiniTestEmphasis = { bold = true }
  highlights.MiniTestFail = { fg = c.red[1], bold = true }
  highlights.MiniTestPass = { fg = c.green[1], bold = true }
  highlights.MiniTrailspace = { bg = c.red[1] }
  highlights.MiniAnimateNormalFloat = 'NormalFloat'
  highlights.MiniClueBorder = 'FloatBorder'
  highlights.MiniClueDescGroup = 'DiagnosticFloatingWarn'
  highlights.MiniClueDescSingle = 'NormalFloat'
  highlights.MiniClueNextKey = 'DiagnosticFloatingHint'
  highlights.MiniClueNextKeyWithPostkeys = 'DiagnosticFloatingError'
  highlights.MiniClueSeparator = 'DiagnosticFloatingInfo'
  highlights.MiniClueTitle = 'FloatTitle'
  highlights.MiniCompletionActiveParameter = 'LspSignatureActiveParameter'
  highlights.MiniCursorword = 'CurrentWord'
  highlights.MiniCursorwordCurrent = 'CurrentWord'
  highlights.MiniDepsChangeAdded = 'Added'
  highlights.MiniDepsChangeRemoved = 'Removed'
  highlights.MiniDepsHint = 'DiagnosticHint'
  highlights.MiniDepsInfo = 'DiagnosticInfo'
  highlights.MiniDepsMsgBreaking = 'DiagnosticWarn'
  highlights.MiniDepsPlaceholder = 'Comment'
  highlights.MiniDepsTitle = 'Title'
  highlights.MiniDepsTitleError = 'DiffDelete'
  highlights.MiniDepsTitleSame = 'DiffChange'
  highlights.MiniDepsTitleUpdate = 'DiffAdd'
  highlights.MiniDiffOverAdd = 'DiffAdd'
  highlights.MiniDiffOverChange = 'DiffText'
  highlights.MiniDiffOverContext = 'DiffChange'
  highlights.MiniDiffOverDelete = 'DiffDelete'
  highlights.MiniDiffSignAdd = 'GreenSign'
  highlights.MiniDiffSignChange = 'BlueSign'
  highlights.MiniDiffSignDelete = 'RedSign'
  highlights.MiniIndentscopeSymbol = { fg = c.grey1[1], nocombine = true }
  highlights.MiniIndentscopePrefix = { fg = c.grey1[1], nocombine = true }
  highlights.MiniJump = 'Search'
  highlights.MiniJump2dDim = 'Comment'
  highlights.MiniMapNormal = 'NormalFloat'
  highlights.MiniMapSymbolCount = 'Special'
  highlights.MiniMapSymbolLine = 'Title'
  highlights.MiniMapSymbolView = 'Delimiter'
  highlights.MiniNotifyBorder = 'FloatBorder'
  highlights.MiniNotifyNormal = 'NormalFloat'
  highlights.MiniNotifyTitle = 'FloatTitle'
  highlights.MiniOperatorsExchangeFrom = 'IncSearch'
  highlights.MiniPickMatchMarked = 'DiffChange'
  highlights.MiniStarterFooter = 'Orange'
  highlights.MiniStarterHeader = 'Yellow'
  highlights.MiniStarterInactive = 'Comment'
  highlights.MiniStarterItem = 'Normal'
  highlights.MiniStarterItemBullet = 'Grey'
  highlights.MiniStarterItemPrefix = 'Yellow'
  highlights.MiniStarterQuery = 'Blue'
  highlights.MiniStarterSection = 'Title'
  highlights.MiniSurround = 'IncSearch'
  highlights.MiniTablineFill = 'TabLineFill'
  return highlights
end

return M
