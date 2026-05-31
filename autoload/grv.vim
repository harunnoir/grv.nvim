" =============================================================================
" URL: https://github.com/harunnoir/grv
" Filename: autoload/grv.vim
" Author: harunnoir
" License: MIT License
" =============================================================================

function! grv#get_configuration() "{{{
  return luaeval('require("grv.config").get_config()')
endfunction "}}}
function! grv#get_palette(background, foreground, colors_override) "{{{
  let config = {'background': a:background, 'foreground': a:foreground, 'colors_override': a:colors_override}
  return luaeval('require("grv.palette").get_palette(_A)', config)
endfunction "}}}
function! grv#highlight(group, fg, bg, ...) "{{{
  let l:args = [a:group, a:fg, a:bg] + a:000
  return luaeval('require("grv.util").highlight(unpack(_A))', l:args)
endfunction "}}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
