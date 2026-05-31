" -----------------------------------------------------------------------------
" Name:           Gruvbox Material
" Description:    Gruvbox with Material Palette (Lua-based)
" Author:         harunnoir
" Website:        https://github.com/harunnoir/grv
" License:        MIT
" -----------------------------------------------------------------------------

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'grv'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co < 256
  finish
endif

lua require('grv').setup()

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
