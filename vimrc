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
Plugin 'tpope/vim-fugitive'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'isRuslan/vim-es6'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'Valloric/YouCompleteMe'
Plugin 'groenewege/vim-less'
Plugin 'cakebaker/scss-syntax.vim'

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
set colorcolumn=80
set laststatus=2
set nowrap
set cursorline

let g:airline#extensions#tabline#enabled = 1
let python_highlight_all = 1

" Configure NERDTree to open when pressing ctr+t
map <C-t> :NERDTreeToggle<CR>
" Close vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Remove trailing whitespaces on file save
autocmd VimEnter * ToggleStripWhitespaceOnSave
autocmd BufRead,BufNewFile,BufEnter *.js,*.html,*.css,*.jade,*.scss,*.less,*.json setlocal tabstop=2 shiftwidth=2 softtabstop=2
