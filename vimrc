" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'ycm-core/YouCompleteMe'

" Language Highlighting
Plug 'guns/vim-clojure-static'

" Colorschemes
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'danilo-augusto/vim-afterglow'
Plug 'jacoborus/tender.vim'

call plug#end()

colorscheme afterglow
set guifont=Fira\ Code:h12

" ----------
" Leader key
" ----------
let mapleader = ","
let maplocalleader = "."

" ------------
" VIM SETTINGS
" ------------
syntax on
filetype plugin indent on

set encoding=utf-8
set backspace=2   " Backspace deletes like most programs in insert mode
set nocompatible  " Use Vim settings, rather then Vi settings
set nobackup
set autoindent
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set showmatch
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands"
set clipboard=unnamed
set completeopt=menuone,preview
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.gitkeep
set smartindent
set colorcolumn=80

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Numbers
set number
set numberwidth=5
let &t_Co=256

" Autocommands depending on file type
autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
autocmd FileType python set sw=4 sts=4 et
autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:&gt;
autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;
autocmd BufWritePre * :%s/\s\+$//e

" --------
" MAPPINGS
" --------
"

" Don't use cursor keys in VIM
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap <leader>o :Files<Cr>
nmap <silent> <leader>p :NERDTreeToggle<cr>%
