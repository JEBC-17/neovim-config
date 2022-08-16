" Fundamentals "{{{
" ---------------------------------------------------------------------

"leader key:
let mapleader = " "



" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif
set mouse=a
set nocompatible
set number
syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
"let loaded_matchparen = 1
set backupskip=/tmp/*,/private/tmp/*
set relativenumber
" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2
" Ignore case when searching
set ignorecase
" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r

"}}}

" Highlights "{{{
" ---------------------------------------------------------------------
"set cursorline
"set cursorcolumn

" Set cursor line color on visual mode

" augroup BgHighlight
"   autocmd!
"   autocmd WinEnter * set cul
" augroup END

" if &term =~ "screen"
"   autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
"   autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
" endif

"}}}

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Python
au BufNewFile,BufRead *.py setf python
"Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
" Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  runtime ./windows.vim
endif

runtime ./maps.vim
"}}}
" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  "let g:neosolarized_termtrans=1
 runtime ./colors/NeoSolarized.vim
 runtime ./colors/monokai-pro.vim
endif

"}}}

" Extras "{{{
" ---------------------------------------------------------------------
set exrc
function! Termpy()
  exec winheight(0)/4."split" | terminal python %
endfunction
nnoremap <F5> :call Termpy() <CR>
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
"}}}

"THEMES GRUVBOX
" Example config in VimScript
let g:gruvbox_baby_function_style = "NONE"
let g:gruvbox_baby_keyword_style = "italic"
let g:gruvbox_baby_background_color = "NONE"
" Enable telescope theme
let g:gruvbox_baby_telescope_theme = 1

" Enable transparent mode
let g:gruvbox_baby_transparent_mode = 1

" colorscheme purify

let g:sonokai_style = 'shusia'
let g:sonokai_better_performance = 1
let g:sonokai_transparent_background = 1 

colorscheme gruvbox-baby



" Neovide "{{{
" ---------------------------------------------------------------------
let g:neovide_transparency = 0.4
" set guifont =Hack\ NF:h11.5 
set guifont =Cascadia\ Code:h11


