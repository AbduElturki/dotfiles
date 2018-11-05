set number
set laststatus=2
set nocompatible              " be iMproved, required
set splitbelow
set splitright
set encoding=utf-8
filetype off                  " required
syntax on

let g:powerline_pycmd="py3"
set rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"tab traverse
nnoremap <C-l> gt
nnoremap <C-h> gT
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Python auto python  indientation
Plugin 'vim-scripts/indentpython.vim'

" Syntax check
Plugin 'vim-syntastic/syntastic'

" PEP 8 Checker
Plugin 'nvie/vim-flake8'

" Nerd Tree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <silent> <C-n> :NERDTreeFocus<CR>
let NERDTreeQuitOnOpen=1

Plugin 'kien/ctrlp.vim'

Plugin 'itchyny/lightline.vim'

" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"YCM
Bundle 'Valloric/YouCompleteMe'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

