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
Plugin 'groenewege/vim-less'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'digitaltoad/vim-jade'
Plugin 'fatih/vim-go'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mxw/vim-jsx'
Plugin 'JulesWang/css.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'elzr/vim-json'

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
set rnu

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set backspace=indent,eol,start
set pastetoggle=<F10>
set clipboard=unnamed

let g:airline#extensions#tabline#enabled = 1
let python_highlight_all = 1
let g:go_fmt_command = "goimports"
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

nnoremap <silent> <leader>y :set noexpandtab<CR>:%retab!<CR>
nnoremap Q <nop>
" Configure NERDTree to open when pressing ctr+t
map <C-t> :NERDTreeToggle<CR>
" Close vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Remove trailing whitespaces on file save
autocmd VimEnter * ToggleStripWhitespaceOnSave
autocmd BufRead,BufNewFile,BufEnter *.jsx,*.js,*.html,*.css,*.jade,*.scss,*.less,*.json setlocal tabstop=2 shiftwidth=2 softtabstop=2
