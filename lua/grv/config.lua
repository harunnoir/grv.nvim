local M = {}

M.defaults = {
  background = 'soft',
  foreground = 'material',
  transparent_background = 0,
  dim_inactive_windows = false,
  disable_italic_comment = false,
  enable_bold = false,
  enable_italic = false,
  cursor = '',
  visual = 'grey background',
  menu_selection_background = 'grey',
  sign_column_background = 'none',
  spell_foreground = 'none',
  ui_contrast = 'low',
  show_eob = true,
  float_style = 'bright',
  current_word = nil,
  inlay_hints_background = 'none',
  statusline_style = 'default',
  lightline_disable_bold = false,
  diagnostic_text_highlight = false,
  diagnostic_line_highlight = false,
  diagnostic_virtual_text = 'grey',
  disable_terminal_colors = false,
  better_performance = false,
  colors_override = {},
  user_highlights = {},
  plugins = {},
}

local function get_vim_g(name, default)
  local ok, val = pcall(vim.api.nvim_get_var, name)
  if ok then
    return val
  end
  return default
end

function M.get_config()
  local config = {}
  for k, v in pairs(M.defaults) do
    config[k] = v
  end

  config.background = get_vim_g('grv_background', 'soft')
  config.foreground = get_vim_g('grv_foreground', get_vim_g('grv_palette', 'material'))
  config.transparent_background = get_vim_g('grv_transparent_background', 0)
  config.dim_inactive_windows = get_vim_g('grv_dim_inactive_windows', false) and true or false
  config.disable_italic_comment = get_vim_g('grv_disable_italic_comment', false) and true or false
  config.enable_bold = get_vim_g('grv_enable_bold', false) and true or false
  config.enable_italic = get_vim_g('grv_enable_italic', false) and true or false

  local cursor_val = get_vim_g('grv_cursor', '')
  local float_style = get_vim_g('grv_float_style', 'bright')
  if float_style == 'none' then
    float_style = 'blend'
    vim.notify("g:grv_float_style='none' was renamed to 'blend'", vim.log.levels.ERROR)
  end
  config.float_style = float_style
  config.cursor = cursor_val

  config.visual = get_vim_g('grv_visual', 'grey background')
  config.menu_selection_background = get_vim_g('grv_menu_selection_background', 'grey')
  config.sign_column_background = get_vim_g('grv_sign_column_background', 'none')
  config.spell_foreground = get_vim_g('grv_spell_foreground', 'none')
  config.ui_contrast = get_vim_g('grv_ui_contrast', 'low')
  config.show_eob = get_vim_g('grv_show_eob', true) and true or false

  local current_word_default = (config.transparent_background == 0) and 'grey background' or 'bold'
  config.current_word = get_vim_g('grv_current_word', current_word_default)

  config.inlay_hints_background = get_vim_g('grv_inlay_hints_background', 'none')
  config.statusline_style = get_vim_g('grv_statusline_style', 'default')
  config.lightline_disable_bold = get_vim_g('grv_lightline_disable_bold', false) and true or false
  config.diagnostic_text_highlight = get_vim_g('grv_diagnostic_text_highlight', false) and true or false
  config.diagnostic_line_highlight = get_vim_g('grv_diagnostic_line_highlight', false) and true or false
  config.diagnostic_virtual_text = get_vim_g('grv_diagnostic_virtual_text', 'grey')
  config.disable_terminal_colors = get_vim_g('grv_disable_terminal_colors', false) and true or false
  config.better_performance = get_vim_g('grv_better_performance', false) and true or false
  config.colors_override = get_vim_g('grv_colors_override', {})
  config.user_highlights = get_vim_g('grv_user_highlights', {})
  config.plugins = get_vim_g('grv_plugins', {})

  return config
end

return M
