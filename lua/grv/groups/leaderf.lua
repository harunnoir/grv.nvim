local M = {}

function M.get(c, opts)
  local highlights = {}

  if not vim.g.Lf_StlColorscheme then
    vim.g.Lf_StlColorscheme = 'grv'
  end
  if not vim.g.Lf_PopupColorscheme then
    vim.g.Lf_PopupColorscheme = 'grv'
  end
  highlights.Lf_hl_match = { fg = c.green[1], bold = true }
  highlights.Lf_hl_match0 = { fg = c.green[1], bold = true }
  highlights.Lf_hl_match1 = { fg = c.aqua[1], bold = true }
  highlights.Lf_hl_match2 = { fg = c.blue[1], bold = true }
  highlights.Lf_hl_match3 = { fg = c.purple[1], bold = true }
  highlights.Lf_hl_match4 = { fg = c.orange[1], bold = true }
  highlights.Lf_hl_matchRefine = { fg = c.red[1], bold = true }
  highlights.Lf_hl_popup_normalMode = { fg = c.bg0[1], bg = c.grey2[1], bold = true }
  highlights.Lf_hl_popup_inputMode = { fg = c.bg0[1], bg = c.grey2[1], bold = true }
  highlights.Lf_hl_popup_category = { fg = c.bg0[1], bg = c.grey1[1] }
  highlights.Lf_hl_popup_nameOnlyMode = { fg = c.fg1[1], bg = c.bg_statusline3[1] }
  highlights.Lf_hl_popup_fullPathMode = { fg = c.fg1[1], bg = c.bg_statusline3[1] }
  highlights.Lf_hl_popup_fuzzyMode = { fg = c.bg0[1], bg = c.grey0[1] }
  highlights.Lf_hl_popup_regexMode = { fg = c.fg1[1], bg = c.bg_statusline3[1] }
  highlights.Lf_hl_popup_lineInfo = { fg = c.bg0[1], bg = c.green[1] }
  highlights.Lf_hl_popup_total = { fg = c.bg0[1], bg = c.yellow[1] }
  highlights.Lf_hl_popup_cursor = { fg = c.bg0[1], bg = c.green[1] }
  highlights.Lf_hl_popup_inputText = { fg = c.green[1], bg = c.bg3[1] }
  highlights.Lf_hl_cursorline = { fg = c.fg1[1] }
  highlights.Lf_hl_selection = 'DiffAdd'
  highlights.Lf_hl_rgHighlight = 'Visual'
  highlights.Lf_hl_gtagsHighlight = 'Visual'
  highlights.Lf_hl_popup_window = 'Pmenu'
  highlights.Lf_hl_popup_prompt = 'Orange'
  highlights.Lf_hl_popup_cwd = 'Pmenu'
  highlights.Lf_hl_popup_blank = 'Lf_hl_popup_window'
  highlights.Lf_hl_popup_spin = 'Purple'

  return highlights
end

return M
