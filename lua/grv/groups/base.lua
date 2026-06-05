local M = {}

function M.get(c, opts)
  local highlights = {}

  if opts.transparent_background ~= 0 then
    highlights.Normal = { fg = c.fg0[1], bg = 'NONE' }
    highlights.NormalNC = { fg = c.fg0[1], bg = 'NONE' }
    highlights.Terminal = { fg = c.fg0[1], bg = 'NONE' }
    if opts.show_eob then
      highlights.EndOfBuffer = { fg = c.bg5[1], bg = 'NONE' }
    else
      highlights.EndOfBuffer = { fg = c.bg0[1], bg = 'NONE' }
    end
    if opts.ui_contrast == 'low' then
      highlights.FoldColumn = { fg = c.bg5[1], bg = 'NONE' }
    else
      highlights.FoldColumn = { fg = c.grey0[1], bg = 'NONE' }
    end
    highlights.Folded = { fg = c.grey1[1], bg = c.bg1[1], italic = true }
    highlights.SignColumn = { fg = c.fg0[1], bg = 'NONE' }
    highlights.ToolbarLine = { fg = c.fg0[1], bg = 'NONE' }
  else
    highlights.Normal = { fg = c.fg0[1], bg = c.bg0[1] }
    if opts.dim_inactive_windows then
      highlights.NormalNC = { fg = c.fg0[1], bg = c.bg_dim[1] }
    else
      highlights.NormalNC = { fg = c.fg0[1], bg = c.bg0[1] }
    end
    highlights.Terminal = { fg = c.fg0[1], bg = c.bg0[1] }
    if opts.show_eob then
      highlights.EndOfBuffer = { fg = c.bg5[1], bg = 'NONE' }
    else
      highlights.EndOfBuffer = { fg = c.bg0[1], bg = 'NONE' }
    end
    highlights.Folded = { fg = c.grey1[1], bg = c.bg1[1], italic = true }
    highlights.ToolbarLine = { fg = c.fg1[1], bg = c.bg3[1] }
    if opts.sign_column_background == 'grey' or opts.sign_column_background == 'linenr' then
      highlights.SignColumn = { fg = c.fg0[1], bg = c.bg2[1] }
      highlights.FoldColumn = { fg = c.grey1[1], bg = c.bg2[1] }
    else
      highlights.SignColumn = { fg = c.fg0[1], bg = 'NONE' }
      if opts.ui_contrast == 'low' then
        highlights.FoldColumn = { fg = c.bg5[1], bg = 'NONE' }
      else
        highlights.FoldColumn = { fg = c.grey0[1], bg = 'NONE' }
      end
    end
  end

  highlights.IncSearch = { fg = c.bg0[1], bg = c.orange[1], bold = true }
  highlights.Search    = { fg = c.bg0[1], bg = c.yellow[1] }
  highlights.CurSearch = { fg = c.bg0[1], bg = c.orange[1], bold = true }

  highlights.ColorColumn = { bg = c.bg2[1] }
  if opts.ui_contrast == 'low' then
    highlights.Conceal = { fg = c.bg5[1] }
  else
    highlights.Conceal = { fg = c.grey0[1] }
  end
  if opts.cursor == 'auto' then
    highlights.Cursor = { reverse = true }
  elseif opts.cursor ~= '' then
    highlights.Cursor = { fg = c.bg0[1], bg = c[opts.cursor] and c[opts.cursor][1] }
  end
  highlights.vCursor = 'Cursor'
  highlights.iCursor = 'Cursor'
  highlights.lCursor = 'Cursor'
  highlights.CursorIM = 'Cursor'

  if vim.wo.diff then
    highlights.CursorLine = { underline = true }
    highlights.CursorColumn = { bold = true }
  else
    highlights.CursorLine = { bg = c.bg1[1] }
    highlights.CursorColumn = { bg = c.bg1[1] }
  end

  if opts.ui_contrast == 'low' then
    if opts.sign_column_background == 'linenr' and opts.transparent_background == 0 then
      highlights.LineNr = { fg = c.bg5[1], bg = c.bg1[1] }
      if vim.wo.diff then
        highlights.CursorLineNr = { fg = c.yellow[1], bg = c.bg1[1], underline = true }
      elseif vim.wo.relativenumber and not vim.wo.cursorline then
        highlights.CursorLineNr = { fg = c.yellow[1], bg = c.bg1[1], bold = true }
      else
        highlights.CursorLineNr = { fg = c.yellow[1], bg = c.bg1[1], bold = true }
      end
    else
      highlights.LineNr = { fg = c.bg5[1] }
      if vim.wo.diff then
        highlights.CursorLineNr = { fg = c.yellow[1], bg = c.bg1[1], underline = true }
      elseif (vim.wo.relativenumber and not vim.wo.cursorline) or opts.sign_column_background == 'none' then
        highlights.CursorLineNr = { fg = c.yellow[1], bg = c.bg1[1], bold = true }
      else
        highlights.CursorLineNr = { fg = c.yellow[1], bg = c.bg1[1], bold = true }
      end
    end
  else
    if opts.sign_column_background == 'linenr' and opts.transparent_background == 0 then
      highlights.LineNr = { fg = c.bg5[1], bg = c.bg1[1] }
      if vim.wo.diff then
        highlights.CursorLineNr = { fg = c.yellow[1], bg = c.bg1[1], underline = true }
      elseif vim.wo.relativenumber and not vim.wo.cursorline then
        highlights.CursorLineNr = { fg = c.yellow[1], bg = c.bg1[1], bold = true }
      else
        highlights.CursorLineNr = { fg = c.yellow[1], bg = c.bg1[1], bold = true }
      end
    else
      highlights.LineNr = { fg = c.bg5[1] }
      if vim.wo.diff then
        highlights.CursorLineNr = { fg = c.yellow[1], bg = c.bg1[1], underline = true }
      elseif (vim.wo.relativenumber and not vim.wo.cursorline) or opts.sign_column_background == 'none' then
        highlights.CursorLineNr = { fg = c.yellow[1], bg = c.bg1[1], bold = true }
      else
        highlights.CursorLineNr = { fg = c.yellow[1], bg = c.bg1[1], bold = true }
      end
    end
  end

  highlights.DiffAdd    = { bg = c.bg_diff_green[1] }
  highlights.DiffChange = { bg = c.bg_diff_blue[1] }
  highlights.DiffDelete = { fg = c.grey0[1], bg = c.bg_diff_red[1] }
  highlights.DiffText   = { bg = c.bg1[1] }

  highlights.Directory = { fg = c.green[1] }
  highlights.ErrorMsg = { fg = c.red[1], bold = true, underline = true }
  highlights.WarningMsg = { fg = c.yellow[1], bold = true }
  highlights.ModeMsg = { fg = c.fg0[1], bold = true }
  highlights.MoreMsg = { fg = c.yellow[1], bold = true }
  highlights.MsgArea = 'Normal'
  highlights.MatchParen = { fg = c.orange[1], bold = true }
  highlights.NonText = { fg = c.bg5[1] }
  highlights.Whitespace = { fg = c.bg5[1] }
  highlights.SpecialKey = { fg = c.orange[1] }

  highlights.Pmenu = { fg = c.fg1[1], bg = c.bg3[1] }
  highlights.PmenuSbar = { bg = c.bg3[1] }
  if opts.menu_selection_background == 'grey' then
    highlights.PmenuSel = { fg = c.bg3[1], bg = c.grey2[1] }
  elseif opts.menu_selection_background == 'green' then
    highlights.PmenuSel = { fg = c.bg3[1], bg = c.bg_green[1] }
  elseif opts.menu_selection_background == 'red' then
    highlights.PmenuSel = { fg = c.bg3[1], bg = c.bg_red[1] }
  else
    highlights.PmenuSel = { fg = c.bg3[1], bg = c[opts.menu_selection_background] and c[opts.menu_selection_background][1] }
  end
  highlights.PmenuKind = { fg = c.green[1], bg = c.bg3[1] }
  highlights.PmenuExtra = { fg = c.grey2[1], bg = c.bg3[1] }
  highlights.WildMenu = 'PmenuSel'
  highlights.PmenuThumb = { bg = c.grey0[1] }

  highlights.NormalFloat = { fg = c.fg1[1], bg = c.bg_float[1] }
  highlights.FloatBorder = { fg = c.border_fg[1], bg = c.bg_float[1] }
  highlights.FloatTitle = { fg = c.title_fg[1], bg = c.bg_float[1], bold = true }

  highlights.Question = { fg = c.yellow[1] }

  highlights.SpellBad = { sp = c.red[1], underline = true }
  highlights.SpellCap = { sp = c.blue[1], underline = true }
  highlights.SpellLocal = { sp = c.aqua[1], underline = true }
  highlights.SpellRare = { sp = c.purple[1], underline = true }

  if opts.transparent_background == 2 then
    if opts.statusline_style == 'original' then
      highlights.StatusLine = { fg = c.grey2[1] }
      highlights.StatusLineTerm = { fg = c.grey2[1] }
      highlights.StatusLineNC = { fg = c.grey1[1] }
      highlights.StatusLineTermNC = { fg = c.grey1[1] }
      highlights.TabLine = { fg = c.grey2[1], bg = c.bg_statusline2[1] }
      highlights.TabLineFill = { fg = c.grey2[1] }
      highlights.TabLineSel = { fg = c.bg0[1], bg = c.grey2[1] }
      highlights.WinBar = { fg = c.grey2[1], bold = true }
      highlights.WinBarNC = { fg = c.grey1[1] }
    elseif opts.statusline_style == 'mix' then
      highlights.StatusLine = { fg = c.grey2[1] }
      highlights.StatusLineTerm = { fg = c.grey2[1] }
      highlights.StatusLineNC = { fg = c.grey1[1] }
      highlights.StatusLineTermNC = { fg = c.grey1[1] }
      highlights.TabLine = { fg = c.grey2[1], bg = c.bg_statusline3[1] }
      highlights.TabLineFill = { fg = c.grey2[1] }
      highlights.TabLineSel = { fg = c.bg0[1], bg = c.grey2[1] }
      highlights.WinBar = { fg = c.grey2[1], bold = true }
      highlights.WinBarNC = { fg = c.grey1[1] }
    else
      highlights.StatusLine = { fg = c.fg1[1] }
      highlights.StatusLineTerm = { fg = c.fg1[1] }
      highlights.StatusLineNC = { fg = c.grey1[1] }
      highlights.StatusLineTermNC = { fg = c.grey1[1] }
      highlights.TabLine = { fg = c.fg1[1], bg = c.bg_statusline3[1] }
      highlights.TabLineFill = { fg = c.fg1[1] }
      highlights.TabLineSel = { fg = c.bg0[1], bg = c.grey2[1] }
      highlights.WinBar = { fg = c.fg1[1], bold = true }
      highlights.WinBarNC = { fg = c.grey1[1] }
    end
  else
    if opts.statusline_style == 'original' then
      highlights.StatusLine = { fg = c.grey2[1], bg = c.bg_statusline2[1] }
      highlights.StatusLineTerm = { fg = c.grey2[1], bg = c.bg_statusline2[1] }
      highlights.StatusLineNC = { fg = c.grey1[1], bg = c.bg_statusline1[1] }
      highlights.StatusLineTermNC = { fg = c.grey1[1], bg = c.bg_statusline1[1] }
      highlights.TabLine = { fg = c.grey2[1], bg = c.bg_statusline2[1] }
      highlights.TabLineFill = { fg = c.grey2[1], bg = c.bg0[1] }
      highlights.TabLineSel = { fg = c.bg0[1], bg = c.grey2[1] }
      highlights.WinBar = { fg = c.grey2[1], bg = c.bg_statusline2[1], bold = true }
      highlights.WinBarNC = { fg = c.grey1[1], bg = c.bg_statusline1[1] }
    elseif opts.statusline_style == 'mix' then
      highlights.StatusLine = { fg = c.grey2[1], bg = c.bg_statusline2[1] }
      highlights.StatusLineTerm = { fg = c.grey2[1], bg = c.bg_statusline2[1] }
      highlights.StatusLineNC = { fg = c.grey1[1], bg = c.bg_statusline1[1] }
      highlights.StatusLineTermNC = { fg = c.grey1[1], bg = c.bg_statusline1[1] }
      highlights.TabLine = { fg = c.grey2[1], bg = c.bg_statusline3[1] }
      highlights.TabLineFill = { fg = c.grey2[1], bg = c.bg_statusline2[1] }
      highlights.TabLineSel = { fg = c.bg0[1], bg = c.grey2[1] }
      highlights.WinBar = { fg = c.grey2[1], bg = c.bg_statusline2[1], bold = true }
      highlights.WinBarNC = { fg = c.grey1[1], bg = c.bg_statusline1[1] }
    else
      highlights.StatusLine = { fg = c.fg1[1], bg = c.bg_statusline1[1] }
      highlights.StatusLineTerm = { fg = c.fg1[1], bg = c.bg_statusline1[1] }
      highlights.StatusLineNC = { fg = c.grey1[1], bg = c.bg_statusline1[1] }
      highlights.StatusLineTermNC = { fg = c.grey1[1], bg = c.bg_statusline1[1] }
      highlights.TabLine = { fg = c.fg1[1], bg = c.bg_statusline3[1] }
      highlights.TabLineFill = { fg = c.fg1[1], bg = c.bg_statusline1[1] }
      highlights.TabLineSel = { fg = c.bg0[1], bg = c.grey2[1] }
      highlights.WinBar = { fg = c.fg1[1], bg = c.bg_statusline1[1], bold = true }
      highlights.WinBarNC = { fg = c.grey1[1], bg = c.bg_statusline1[1] }
    end
  end

  if opts.dim_inactive_windows then
    highlights.VertSplit = { fg = c.bg4[1], bg = c.bg_dim[1] }
  else
    highlights.VertSplit = { fg = c.bg5[1] }
  end
  highlights.WinSeparator = 'VertSplit'
  highlights.StatusColumn = 'WinBarNC'

  if opts.visual == 'grey background' then
    highlights.Visual = { bg = c.bg1[1] }
    highlights.VisualNOS = { bg = c.bg1[1] }
  elseif opts.visual == 'green background' then
    highlights.Visual = { bg = c.bg_visual_green[1] }
    highlights.VisualNOS = { bg = c.bg_visual_green[1] }
  elseif opts.visual == 'blue background' then
    highlights.Visual = { bg = c.bg_visual_blue[1] }
    highlights.VisualNOS = { bg = c.bg_visual_blue[1] }
  elseif opts.visual == 'red background' then
    highlights.Visual = { bg = c.bg_visual_red[1] }
    highlights.VisualNOS = { bg = c.bg_visual_red[1] }
  elseif opts.visual == 'reverse' then
    highlights.Visual = { reverse = true }
    highlights.VisualNOS = { reverse = true }
  end

  highlights.QuickFixLine = { fg = c.bg0[1], bg = c.yellow[1], bold = true }
  -- qf text uses darker fg so it's readable against soft bg
  highlights.qfFileName   = { fg = c.orange[1] }
  highlights.qfLineNr     = { fg = c.grey1[1] }
  highlights.qfError      = { fg = c.red[1] }
  highlights.Debug = { fg = c.orange[1] }
  highlights.debugPC = { fg = c.bg0[1], bg = c.green[1] }
  highlights.debugBreakpoint = { fg = c.bg0[1], bg = c.red[1] }
  highlights.ToolbarButton = { fg = c.bg0[1], bg = c.grey2[1] }
  highlights.Substitute = { fg = c.bg0[1], bg = c.yellow[1] }

  -- Diagnostics
  if opts.diagnostic_text_highlight then
    highlights.DiagnosticError = { fg = c.red[1], bg = c.bg_visual_red[1] }
    highlights.DiagnosticUnderlineError = { sp = c.red[1], underline = true }
    highlights.DiagnosticWarn = { fg = c.yellow[1], bg = c.bg1[1] }
    highlights.DiagnosticUnderlineWarn = { sp = c.yellow[1], underline = true }
    highlights.DiagnosticInfo = { fg = c.blue[1], bg = c.bg_visual_blue[1] }
    highlights.DiagnosticUnderlineInfo = { sp = c.blue[1], underline = true }
    highlights.DiagnosticHint = { fg = c.purple[1], bg = c.bg_visual_purple[1] }
    highlights.DiagnosticUnderlineHint = { sp = c.purple[1], underline = true }
    highlights.DiagnosticOk = { fg = c.green[1], bg = c.bg_visual_green[1] }
    highlights.DiagnosticUnderlineOk = { sp = c.green[1], underline = true }
  else
    highlights.DiagnosticError = { fg = c.red[1] }
    highlights.DiagnosticUnderlineError = { sp = c.red[1], underline = true }
    highlights.DiagnosticWarn = { fg = c.yellow[1] }
    highlights.DiagnosticUnderlineWarn = { sp = c.yellow[1], underline = true }
    highlights.DiagnosticInfo = { fg = c.blue[1] }
    highlights.DiagnosticUnderlineInfo = { sp = c.blue[1], underline = true }
    highlights.DiagnosticHint = { fg = c.purple[1] }
    highlights.DiagnosticUnderlineHint = { sp = c.purple[1], underline = true }
    highlights.DiagnosticOk = { fg = c.green[1] }
    highlights.DiagnosticUnderlineOk = { sp = c.green[1], underline = true }
  end
  highlights.DiagnosticFloatingError = 'ErrorFloat'
  highlights.DiagnosticFloatingWarn = 'WarningFloat'
  highlights.DiagnosticFloatingInfo = 'InfoFloat'
  highlights.DiagnosticFloatingHint = 'HintFloat'
  highlights.DiagnosticFloatingOk = 'OkFloat'

  -- Legacy LspDiagnostics* links (deprecated but still referenced by some plugins)
  highlights.LspDiagnosticsFloatingError = 'DiagnosticFloatingError'
  highlights.LspDiagnosticsFloatingWarning = 'DiagnosticFloatingWarn'
  highlights.LspDiagnosticsFloatingInformation = 'DiagnosticFloatingInfo'
  highlights.LspDiagnosticsFloatingHint = 'DiagnosticFloatingHint'
  highlights.LspDiagnosticsDefaultError = 'DiagnosticError'
  highlights.LspDiagnosticsDefaultWarning = 'DiagnosticWarn'
  highlights.LspDiagnosticsDefaultInformation = 'DiagnosticInfo'
  highlights.LspDiagnosticsDefaultHint = 'DiagnosticHint'
  highlights.LspDiagnosticsVirtualTextError = 'DiagnosticVirtualTextError'
  highlights.LspDiagnosticsVirtualTextWarning = 'DiagnosticVirtualTextWarn'
  highlights.LspDiagnosticsVirtualTextInformation = 'DiagnosticVirtualTextInfo'
  highlights.LspDiagnosticsVirtualTextHint = 'DiagnosticVirtualTextHint'
  highlights.LspDiagnosticsUnderlineError = 'DiagnosticUnderlineError'
  highlights.LspDiagnosticsUnderlineWarning = 'DiagnosticUnderlineWarn'
  highlights.LspDiagnosticsUnderlineInformation = 'DiagnosticUnderlineInfo'
  highlights.LspDiagnosticsUnderlineHint = 'DiagnosticUnderlineHint'
  highlights.LspDiagnosticsSignError = 'DiagnosticSignError'
  highlights.LspDiagnosticsSignWarning = 'DiagnosticSignWarn'
  highlights.LspDiagnosticsSignInformation = 'DiagnosticSignInfo'
  highlights.LspDiagnosticsSignHint = 'DiagnosticSignHint'
  highlights.DiagnosticVirtualTextError = 'VirtualTextError'
  highlights.DiagnosticVirtualTextWarn = 'VirtualTextWarning'
  highlights.DiagnosticVirtualTextInfo = 'VirtualTextInfo'
  highlights.DiagnosticVirtualTextHint = 'VirtualTextHint'
  highlights.DiagnosticVirtualTextOk = 'VirtualTextOk'
  highlights.DiagnosticSignError = 'RedSign'
  highlights.DiagnosticSignWarn = 'YellowSign'
  highlights.DiagnosticSignInfo = 'BlueSign'
  highlights.DiagnosticSignHint = 'PurpleSign'
  highlights.DiagnosticSignOk = 'GreenSign'
  highlights.TermCursor = 'Cursor'
  highlights.healthError = 'Red'
  highlights.healthSuccess = 'Green'
  highlights.healthWarning = 'Yellow'

  -- LspReference (NVIM 0.8+)
  highlights.LspReferenceText = 'CurrentWord'
  highlights.LspReferenceRead = 'CurrentWord'
  highlights.LspReferenceWrite = 'CurrentWord'
  highlights.LspInlayHint = 'InlayHints'
  highlights.LspCodeLens = 'VirtualTextInfo'
  highlights.LspCodeLensSeparator = 'VirtualTextHint'
  highlights.LspSignatureActiveParameter = 'Search'

  -- NVIM 0.9+
  highlights.DiagnosticUnnecessary = { fg = c.grey1[1] }
  highlights.DiagnosticDeprecated = { strikethrough = true, sp = c.fg0[1] }

  if opts.diagnostic_text_highlight then
    highlights.ErrorText = { sp = c.red[1], underline = true }
    highlights.WarningText = { sp = c.yellow[1], underline = true }
    highlights.InfoText = { sp = c.blue[1], underline = true }
    highlights.HintText = { sp = c.purple[1], underline = true }
  else
    highlights.ErrorText = { sp = c.red[1], underline = true }
    highlights.WarningText = { sp = c.yellow[1], underline = true }
    highlights.InfoText = { sp = c.blue[1], underline = true }
    highlights.HintText = { sp = c.purple[1], underline = true }
  end

  if opts.diagnostic_line_highlight then
    highlights.ErrorLine = { bg = c.bg_visual_red[1] }
    highlights.WarningLine = { bg = c.bg1[1] }
    highlights.InfoLine = { bg = c.bg_visual_blue[1] }
    highlights.HintLine = { bg = c.bg_visual_purple[1] }
  end

  if opts.diagnostic_virtual_text == 'grey' then
    highlights.VirtualTextWarning = 'Grey'
    highlights.VirtualTextError = 'Grey'
    highlights.VirtualTextInfo = 'Grey'
    highlights.VirtualTextHint = 'Grey'
    highlights.VirtualTextOk = 'Grey'
  elseif opts.diagnostic_virtual_text == 'colored' then
    highlights.VirtualTextWarning = 'Yellow'
    highlights.VirtualTextError = 'Red'
    highlights.VirtualTextInfo = 'Blue'
    highlights.VirtualTextHint = 'Purple'
    highlights.VirtualTextOk = 'Green'
  else
    highlights.VirtualTextWarning = { fg = c.yellow[1], bg = c.bg1[1] }
    highlights.VirtualTextError = { fg = c.red[1], bg = c.bg_visual_red[1] }
    highlights.VirtualTextInfo = { fg = c.blue[1], bg = c.bg_visual_blue[1] }
    highlights.VirtualTextHint = { fg = c.purple[1], bg = c.bg_visual_purple[1] }
    highlights.VirtualTextOk = { fg = c.green[1], bg = c.bg_visual_green[1] }
  end

  highlights.ErrorFloat = { fg = c.red[1] }
  highlights.WarningFloat = { fg = c.yellow[1] }
  highlights.InfoFloat = { fg = c.blue[1] }
  highlights.HintFloat = { fg = c.purple[1] }
  highlights.OkFloat = { fg = c.green[1] }

  if vim.wo.diff then
    highlights.CurrentWord = { fg = c.bg0[1], bg = c.bg_green[1] }
  elseif opts.current_word == 'grey background' then
    highlights.CurrentWord = { bg = c.bg_current_word[1] }
  elseif opts.current_word == 'high contrast background' then
    highlights.CurrentWord = { bg = c.bg4[1] }
  elseif opts.current_word and opts.current_word ~= '' then
    local gui = opts.current_word
    highlights.CurrentWord = {
      bold = gui:find('bold') ~= nil,
      italic = gui:find('italic') ~= nil,
      underline = gui:find('underline') ~= nil,
      undercurl = gui:find('undercurl') ~= nil,
      strikethrough = gui:find('strikethrough') ~= nil,
      reverse = gui:find('reverse') ~= nil,
    }
  end

  if opts.inlay_hints_background == 'none' then
    highlights.InlayHints = 'LineNr'
  else
    if vim.o.background == 'dark' then
      highlights.InlayHints = { fg = c.grey0[1], bg = c.bg_dim[1] }
    else
      highlights.InlayHints = { fg = c.grey1[1], bg = c.bg_dim[1] }
    end
  end

  return highlights
end

return M
