set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'luochen1990/rainbow'
Plugin 'itchyny/lightline.vim'

call vundle#end()            " required
filetype plugin indent on    " required

let g:ctrlp_user_command = 'find %s -type f -not -path "*node_modules/*" -not -path "coverage" -not -path "build"'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|coverage)|(\.(swp|ico|git|svn))$'

let g:rainbow_active = 1

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

autocmd FileType javascript nnoremap <F2> :!npm run lint<CR>
autocmd FileType javascript nnoremap <F3> :!npm run test<CR>
