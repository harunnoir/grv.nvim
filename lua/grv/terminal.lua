local M = {}

function M.setup(palette, config)
  if config.disable_terminal_colors then
    return
  end

  local util = require('grv.util')
  local is_nvim = util.is_nvim
  local has_truecolor = (vim.fn.has('termguicolors') == 1 and vim.o.termguicolors) or vim.fn.has('gui_running') == 1

  if not has_truecolor then
    return
  end

  local is_dark = vim.o.background == 'dark'

  local terminal = {
    black  = is_dark and palette.bg5 or palette.fg0,
    red    = palette.red,
    yellow = palette.yellow,
    green  = palette.green,
    cyan   = palette.aqua,
    blue   = palette.blue,
    purple = palette.purple,
    white  = is_dark and palette.fg0 or palette.bg5,
  }

  if not is_nvim() then
    vim.g.terminal_ansi_colors = {
      terminal.black[1], terminal.red[1], terminal.green[1], terminal.yellow[1],
      terminal.blue[1], terminal.purple[1], terminal.cyan[1], terminal.white[1],
      terminal.black[1], terminal.red[1], terminal.green[1], terminal.yellow[1],
      terminal.blue[1], terminal.purple[1], terminal.cyan[1], terminal.white[1],
    }
  else
    vim.g.terminal_color_0  = terminal.black[1]
    vim.g.terminal_color_1  = terminal.red[1]
    vim.g.terminal_color_2  = terminal.green[1]
    vim.g.terminal_color_3  = terminal.yellow[1]
    vim.g.terminal_color_4  = terminal.blue[1]
    vim.g.terminal_color_5  = terminal.purple[1]
    vim.g.terminal_color_6  = terminal.cyan[1]
    vim.g.terminal_color_7  = terminal.white[1]
    vim.g.terminal_color_8  = terminal.black[1]
    vim.g.terminal_color_9  = terminal.red[1]
    vim.g.terminal_color_10 = terminal.green[1]
    vim.g.terminal_color_11 = terminal.yellow[1]
    vim.g.terminal_color_12 = terminal.blue[1]
    vim.g.terminal_color_13 = terminal.purple[1]
    vim.g.terminal_color_14 = terminal.cyan[1]
    vim.g.terminal_color_15 = terminal.white[1]
  end
end

return M
