" Start Vundle config
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins go here
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'tomasr/molokai'
Plugin 'hdima/python-syntax'

call vundle#end()
filetype plugin indent on
" END Vundle config

syntax on
color molokai
set number
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

let python_highlight_all = 1

" Configure NERDTree to open when pressing ctr+t
map <C-t> :NERDTreeToggle<CR>
" Close vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
