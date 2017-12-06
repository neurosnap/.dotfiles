" Start Vundle config
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins go here
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'tomasr/molokai'
Plugin 'hdima/python-syntax'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'isRuslan/vim-es6'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kshenoy/vim-signature'
Plugin 'fatih/vim-go'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'JulesWang/css.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'elzr/vim-json'
Plugin 'w0rp/ale'
Plugin 'StanAngeloff/php.vim'

call vundle#end()
filetype plugin indent on
" END Vundle config

syntax on
color molokai
set encoding=utf-8
set number
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set colorcolumn=80
set laststatus=2
set nowrap
set cursorline

set backspace=indent,eol,start
set pastetoggle=<F10>
set clipboard=unnamed

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let python_highlight_all = 1
let g:go_fmt_command = "goimports"
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:go_def_mapping_enabled=0

nnoremap <silent> <leader>y :set noexpandtab<CR>:%retab!<CR>
nnoremap Q <nop>
" Configure NERDTree to open when pressing ctr+t
map <C-t> :NERDTreeToggle<CR>
" Close vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Remove trailing whitespaces on file save
autocmd VimEnter * ToggleStripWhitespaceOnSave
autocmd BufRead,BufNewFile,BufEnter *.jsx,*.js,*.html,*.css,*.jade,*.scss,*.less,*.json setlocal tabstop=2 shiftwidth=2 softtabstop=2
