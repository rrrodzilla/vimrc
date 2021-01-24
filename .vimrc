set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
call vundle#end()        
filetype plugin indent on 
set t_Co=256
inoremap jk <ESC>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let mapleader = "'"
syntax on
set number
set noswapfile
set hlsearch
set ignorecase
set incsearch
colorscheme badwolf
autocmd BufWritePre *.py execute ':Black'
let NerdTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.git', '\venv']
map <leader>f :NERDTreeToggle<cr>
let NERDTreeQuitOnOpen = 0
let NERDTreeMinimalUI=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close vim if there is only nerdtree
