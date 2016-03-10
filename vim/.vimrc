" Disable vi comaptibility
set nocompatible
filetype off

" Initializing Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" Letting Vundle manage Vundle
Plugin  'gmarik/Vundle.vim'

" Repos on GitHub
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'pearofducks/ansible-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'bitc/vim-bad-whitespace'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree'

let mapleader=" "

" Tab Settings
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2

" Theme
set t_Co=256
syntax enable
set background=dark
silent! colorscheme solarized
let g:solarized_termcolors=256
set colorcolumn=80

let g:airline_powerline_fonts = 1

" Highlight current line
set cursorline
" Put line numbers
set number

" Remove trailing spaces
autocmd BufWritePre *.py :%s/\s\+$//e

" Disable markdown folding
let g:vim_markdown_folding_disabled=1

" Allow HTML syntax highlighting in js file
let g:javascript_enable_domhtmlcss=1

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

filetype indent plugin on
