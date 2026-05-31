local M = {}

local is_nvim = vim.fn.has('nvim') == 1
local nvim_ver_cache = {}

function M.highlight(group, fg, bg, gui, guisp)
  local fg_str = fg and fg[1] or 'NONE'
  local bg_str = bg and bg[1] or 'NONE'
  local cterm_fg = fg and tonumber(fg[2]) or 'NONE'
  local cterm_bg = bg and tonumber(bg[2]) or 'NONE'
  local gui_str = gui or 'NONE'
  local guisp_str = guisp and guisp[1] or 'NONE'

  vim.api.nvim_set_hl(0, group, {
    fg = fg_str,
    bg = bg_str,
    ctermfg = cterm_fg,
    ctermbg = cterm_bg,
    bold = gui_str:find('bold') ~= nil,
    italic = gui_str:find('italic') ~= nil,
    underline = gui_str:find('underline') ~= nil,
    undercurl = gui_str:find('undercurl') ~= nil,
    strikethrough = gui_str:find('strikethrough') ~= nil,
    reverse = gui_str:find('reverse') ~= nil,
    nocombine = gui_str:find('nocombine') ~= nil,
    sp = guisp_str ~= 'NONE' and guisp_str or nil,
  })
end

function M.link(from, to)
  vim.api.nvim_set_hl(0, from, { link = to, default = true })
end

function M.is_nvim()
  return is_nvim
end

function M.has_nvim(version)
  if not is_nvim then
    return false
  end
  if not version then
    return true
  end
  if nvim_ver_cache[version] == nil then
    nvim_ver_cache[version] = vim.fn.has('nvim-' .. version) == 1
  end
  return nvim_ver_cache[version]
end

function M.is_diff()
  return vim.wo.diff
end

return M
