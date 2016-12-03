"---------------------------------------------------------------------------
" Dein

filetype plugin indent off

if &compatible
  set nocompatible               " Be iMproved
endif

if has('vim_starting')
  set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim
endif

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')

" unite & neosnippet
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

""" vimfiler
"let g:vimfiler_as_default_explorer=1
"call dein#add('Shougo/vimfiler')

" solarized color scheme
let g:solarized_bold=0
let g:solarized_italic=0
call dein#add('altercation/vim-colors-solarized')

" vim-dutyl - dlang tool
let g:dutyl_stdImportPaths=
      \ ['/usr/include/dmd/druntime/import',
      \  '/usr/include/dmd/phobos']
call dein#add('idanarye/vim-dutyl')

"NeoBundleLazy "davidhalter/jedi-vim", {
"      \ "autoload": {
"      \   "filetypes": ["python", "python3", "djangohtml"],
"      \ },
"      \ "build": {
"      \   "mac": "pip install jedi",
"      \   "unix": "pip install jedi",
"      \ }}
"let s:hooks = neobundle#get_hooks("jedi-vim")
"function! s:hooks.on_source(bundle)
"  let g:jedi#auto_vim_configuration = 0
"  let g:jedi#popup_select_first = 0
"  let g:jedi#rename_command = '<Leader>R'
"  let g:jedi#goto_command = '<Leader>G'
"endfunction

" rust
call dein#add('rust-lang/rust.vim')

" graphical undo tree
call dein#add('sjl/gundo.vim')

" cjk direct input
call dein#add('deton/tcvime')

" End Dein
call dein#end()

filetype plugin indent on

""" gundo settings
nnoremap mg :<C-u>GundoToggle<CR>

""" tcvime settings
"
" keymap
let tcvime_keymap = 'tmycode'
" command !not use tcvime in insert mode. Use normal mode <leader><space>
"lmap <silent> fj <Plug>TcvimeIConvOrStart
"lmap <silent> jf <Plug>TcvimeIKatuyo

""" Unite settings
nnoremap [unite] <Nop>
nmap <Space>u [unite]
nnoremap [unite]b :<C-u>Unite buffer<CR>
nnoremap [unite]f :<C-u>Unite file_mru buffer<CR>
nnoremap [unite]o :<C-u>Unite file buffer<CR>

""" neosnippet settings
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
