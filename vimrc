" .vimrc


" PLUGINS

set nocompatible                    " required
filetype off   	                    " required

set rtp+=~/.vim/bundle/Vundle.vim	" set runtime path
call vundle#begin()					" initialize
Plugin 'VundleVim/Vundle.vim'		" required

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive' 
Plugin 'jpalardy/vim-slime'


call vundle#end()                   " required
filetype plugin indent on           " required


" OPTIONS

set tabstop=4               " indent using four space
set ignorecase              " ignore case when searching
set linebreak               " avoid wrapping a line in the middle of a word
syntax enable               " enable syntax highlighting
set wrap                    " enable line wrapping
set laststatus=2            " display status bar
set wildmenu                " display command line's tab complete options as a menu
set number                  " show line numbers on the sidebar
set noerrorbells            " disable beep on errors.
set visualbell              " flash the screen instead of beeping on errors.
set mouse=a                 " enable mouse for scrolling and resizing.
set background=dark         " use colors that suit a dark background.
set spell                   " enable spellchecking.
set wildignore+=.pyc,.swp   " ignore files matching these patterns 
set clipboard=unnamedplus   " copy/paste between vim and other programs


" KEY MAPPINGS

" escape 
inoremap jk <esc>

" leader
let mapleader = ","

" window splits
nnoremap <leader>h <C-W>s
nnoremap <leader>v <C-W>v

" window navigation 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" nerdtree
map <C-n> :NERDTreeToggle<CR>
