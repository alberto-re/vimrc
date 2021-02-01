set nocompatible
filetype off

" Vundle and plugins declaration
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/AutoComplPop'

call vundle#end()
filetype plugin indent on

syntax on

" CTRLP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Lightline
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ],
      \  'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ }
      \ }

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
