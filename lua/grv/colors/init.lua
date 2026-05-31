local M = {}

function M.setup(config)
  local palette = require('grv.palette').get_palette(config)

  local c = vim.deepcopy(palette)

  if config.float_style == 'dim' then
    c.bg_float = palette.bg_dim
  elseif config.float_style == 'blend' then
    c.bg_float = palette.bg0
  else
    c.bg_float = palette.bg3
  end

  c.border_fg = palette.grey1

  c.title_fg = palette.orange

  if config.dim_inactive_windows then
    c.bg_sidebar = palette.bg_dim
  else
    c.bg_sidebar = palette.bg0
  end

  c.git = {
    add    = palette.green,
    change = palette.blue,
    delete = palette.red,
  }

  c.diag = {
    error = palette.red,
    warn  = palette.yellow,
    info  = palette.blue,
    hint  = palette.purple,
    ok    = palette.green,
  }

  c.syntax = {
    keyword      = palette.red,
    string       = palette.yellow,
    number       = palette.yellow,
    ['function'] = palette.orange,
    type         = palette.yellow,
    comment      = palette.grey0,
    variable     = palette.fg1,
    operator     = palette.grey2,
    preproc      = palette.red,
  }

  return c
end

return M
