filetype off

" vi互換スイッチをオフに設定(vimの便利機能を使えるようにする)
if has("vim_starting")
  set nocompatible
endif

" ホームディレクトリ
let s:home_dir = expand('~/vimfiles')
" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = s:home_dir . '/.cache/dein'
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイルを用意しておく
  let s:toml      = s:home_dir . '/dein.toml'
  let s:lazy_toml = s:home_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールのものがあったらインストール
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on

" settings
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
noremap J gJ
vnoremap <silent> <C-p> "0p
inoremap jj <Esc>
inoremap <silent> っj <ESC>
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
"""""""""""""""""""""""""""""
"全角文字の可視化
"""""""""""""""""""""""""""""
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace','　')
    augroup END
    call ZenkakuSpace()
endif
"""""""""""""""""""""""""""""
