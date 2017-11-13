filetype off

if has("vim_starting")
  set nocompatible
  set runtimepath+=~/vimfiles/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/vimfiles/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/vimproc.vim', {
"\ 'build' : {
"\     'windows' : 'tools\\update-dll-mingw',
"\     'cygwin' : 'make -f make_cygwin.mak',
"\     'mac' : 'make -f make_mac.mak',
"\     'linux' : 'make',
"\     'unix' : 'gmake',
"\    },
"\ }
"NeoBundle 'Shougo/vimshell.vim'
"NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 't9md/vim-textmanip'

NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/echodoc'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-commentary'
"NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'cohama/agit.vim'
NeoBundle 'itchyny/vim-parenmatch'
NeoBundle 'itchyny/vim-cursorword'
NeoBundle 'bronson/vim-trailing-whitespace'

call neobundle#end()

filetype plugin indent on

" Installation check.
NeoBundleCheck

set enc=utf-8
set fenc=utf-8

set number
set cursorline
set backupdir=~/vimback
let &directory = &backupdir
let &undodir = &backupdir
set viminfo='50,\"1000,:0,n~/vimfiles/viminfo

set iminsert=2

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set list
set listchars=tab:>-

set clipboard=unnamed
set clipboard+=unnamedplus
set nojoinspaces
set whichwrap&
set whichwrap+=h,l
set nostartofline
set nrformats=

set nowrap
vnoremap <silent> <C-p> "0p
"nnoremap <Left> <nop>
"nnoremap <Right> <nop>
"nnoremap <Up> <nop>
"nnoremap <Down> <nop>
"inoremap <Left> <nop>
"inoremap <Right> <nop>
"inoremap <Up> <nop>
"inoremap <Down> <nop>
"vnoremap <Left> <nop>
"vnoremap <Right> <nop>
"vnoremap <Up> <nop>
"vnoremap <Down> <nop>
""""""""""""""""""""""""""""""
""全角文字の可視化
""""""""""""""""""""""""""""""
"function! ZenkakuSpace()
"    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
"endfunction
"
"if has('syntax')
"    augroup ZenkakuSpace
"        autocmd!
"        autocmd ColorScheme * call ZenkakuSpace()
"        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace','　')
"    augroup END
"    call ZenkakuSpace()
"endif
""""""""""""""""""""""""""""""
"" neocomplete
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#disable_auto_complete = 0
"let g:neocomplete#auto_completion_start_length = 1
"let g:neocomplete#enable_smart_case = 1
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#max_list = 200
"inoremap <expr><C-l> neocomplete#complete_common_string()
