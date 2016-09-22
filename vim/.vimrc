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
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'airblade/vim-gitgutter'
Plugin 'tmhedberg/SimpylFold'
Plugin 'kien/ctrlp.vim'
Plugin 'rust-lang/rust.vim'

" Ending Vundle
call vundle#end()
filetype plugin indent on

let mapleader=" "

" Tab Settings
set smartindent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=79
set fileformat=unix
set encoding=utf-8
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType css setlocal tabstop=2 softtabstop=2 shiftwidth=2
let python_highlight_all = 1

" Theme
set t_Co=256
syntax enable
set background=dark
silent! colorscheme solarized
let g:solarized_termcolors=256
set colorcolumn=80
call togglebg#map("<F5>")
let g:airline_powerline_fonts = 1

" Highlight current line
set cursorline
" Put line numbers
set number

" Movement with splits
set splitbelow
set splitright
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview = 1

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

" YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion = 1
map <leader>g :YcmCompleter GoTo<CR>

" ansible-vim settings
let g:ansible_attribute_highlight = "ab"
let g:ansible_name_highlight = "b"

" NerdTree settings
let NERDTreeIgnore=['\.pyc$', '\~$']
noremap <F4> :NERDTreeToggle<CR>
