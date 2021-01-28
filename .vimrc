set nocompatible
filetype off

" Vundle and plugins declaration
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'posva/vim-vue'
Plugin 'psf/black'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

syntax on

" Gruvbox options
autocmd vimenter * colorscheme gruvbox
set bg=dark
let g:gruvbox_contrast_dark = 'hard'

" CTRLP options
let g:ctrlp_user_command = 'find %s -type f -not -path "*node_modules/*" -not -path "coverage" -not -path "build"'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|coverage)|(\.(swp|ico|git|svn))$'

" Toggle lightline
set laststatus=2

set encoding=utf-8
set wrap
set nu

set incsearch
set smartcase
set showmatch
set hlsearch

set tabstop=4
set shiftwidth=4
set autoindent
set fixeol

" Learn h,j,k,l movement keys the hard way
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

autocmd FileType javascript nnoremap <F2> :!npm run lint<CR>
autocmd FileType javascript nnoremap <F3> :!npm run test<CR>

autocmd FileType python nnoremap <F2> :Black<CR>
autocmd FileType python nnoremap <F3> :!pytest<CR>

nnoremap <F4> :!%:p<CR>
