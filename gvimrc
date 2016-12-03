scriptencoding utf-8
" vim:set ts=8 sts=2 sw=2 tw=0:
"

"---------------------------------------------------------------------------
" Colorscheme:
silent! set background=light
silent! colorscheme solarized
"colorscheme sirohaikei
"colorscheme default  " default colorscheme not apply. Why?

"---------------------------------------------------------------------------
" Face setting:
"
if has('win32')
  " for Windows
  let s:font_name="Osaka" . "\x81\x7c\x93\x99\x95\x9d"
  let &guifont=s:font_name . ":h14:cSHIFTJIS"
  unlet s:font_name
  " line spacing
  set linespace=1
  " get and apply some USC character width
  if has('kaoriya')
    set ambiwidth=auto
  endif
elseif has('mac')
  " mac font
elseif has('xfontset')
  " UNIX (use xfontset)
  set guifontset=a14,r14,k14
elseif has('gui_gtk')
  set guifont=Monospace\ 12
endif

"---------------------------------------------------------------------------
" Window setting:
"
" Position
"winpos 150 5
" Width
set columns=88
" Height
set lines=40
" Command line height for GUI
set cmdheight=1
" No toolbar (go+=T enable)
set guioptions-=T
