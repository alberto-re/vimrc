set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'luochen1990/rainbow'
Plugin 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:ctrlp_user_command = 'find %s -type f -not -path "*node_modules/*" -not -path "coverage" -not -path "build"'
" Files to ignore during fuzzy search
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|coverage)|(\.(swp|ico|git|svn))$'

let g:rainbow_active = 1

let g:EditorConfig_core_mode = 'external_command'
let g:EditorConfig_exec_path = '/usr/bin/editorconfig'

" Toggle lightline
set laststatus=2

set encoding=utf-8

set number

set incsearch
set smartcase
set showmatch
set hlsearch

set tabstop=4
set shiftwidth=4
set autoindent
set fixeol
