scriptencoding utf-8
" vim:set ts=8 sts=2 sw=2 tw=0: (about of this line, see :help modeline)

if isdirectory(expand('~/.vim/dein'))
    source ~/.vim/with_dein.vim
endif

"---------------------------------------------------------------------------
" release MyAutoCmd autogroup
augroup MyAutoCmd
  autocmd!
augroup END


"---------------------------------------------------------------------------
" File-encoding (not Encoding & FileEncodings)
set fenc=utf-8

"---------------------------------------------------------------------------
" Use tmy-code keymap
if has('keymap')
  " Tmy-codeのkeymap
  silent! set keymap=tmycode
  set iminsert=0 imsearch=0
endif

"---------------------------------------------------------------------------
" Edit settings:
"
" Space for Indentation
set shiftwidth=4
set softtabstop=4
" Tab width on screen (def=8)
set tabstop=4
" Expand tab (noexpandtab: expand tab to spaces)
set expandtab
" Enable auto indent (noautoindent: disable)
set autoindent
" Enable smart indent
set smartindent
" Backspace can delete indent, eol and start
set backspace=indent,eol,start
" Search from start of file if reach eof (nowrapscan: no wrap)
set wrapscan
" Show matched parenthesis (noshowmatch: not show it)
set showmatch
" More efficient complete for command line (see :help wildmenu)
set wildmenu
" Line wrapping can handle Japanese
set formatoptions+=mM
" No comment continuation on 'o|O' command
set formatoptions-=o
" Setting for Japanese Script Formatter by Takuhiro Nishioka
"let format_allow_over_tw = 1	" width for offset
" Disable spell check
set nospell

" increment search
set incsearch
" search ignore case
set ignorecase

"---------------------------------------------------------------------------
" Screen setup for not only affect GUI:
"
" Not display line number at left of window (number: show number)
set nonumber
" Display cursor position at mode line (noruler: not show it)
set ruler
" Show non display characters (nolist: not display it)
set list
" What non display characters shown by list
set listchars=tab:\ \ ,trail:\ ,extends:<
" Wrap text (nowrap: not wrap)
set wrap
" Always show status line (see :he laststatus)
set laststatus=2
" Command line height for console (Windows gvim -> edit gvimrc)
set cmdheight=1
" Show command to status line
set showcmd
" Show title
set title
" Highlight search word
set hlsearch
" Dark background color scheme
"colorscheme evening " (Windows gvim -> edit gvimrc)
syntax enable
silent! set background=dark
silent! colorscheme solarized

"---------------------------------------------------------------------------
" Settings for file handling:
"
" No writebackup
set nowritebackup
" No swap file
set noswapfile
" No backup files
set nobackup
" undo file dir
set undodir=~/.vimundo

" Rename command
command! -nargs=1 -complete=file Rename f <args>|call delete(expand('#'))

" Fail proof setting
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>

" Some useful key bindings
nnoremap <Space>f *
nnoremap <Space>h ^
nnoremap <Space>l $
nnoremap <Space>m %
nnoremap <silent> <Space>n :<C-u>noh<CR>
nnoremap <silent> <Space>p :<C-u>set ro!<CR>
" <Space>u is reserved for Unite prefix
