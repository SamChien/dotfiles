call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'

call plug#end()

" general settings
set number
set relativenumber
syntax enable
set background=dark
colorscheme gruvbox
set cursorline
set lazyredraw
set backspace=2
set ambiwidth=double
set list
set listchars=tab:>-,trail:~
set nobomb
set nobackup nowritebackup
set viminfo="NONE"
set wildmenu
set updatetime=300
set t_Co=256
set pastetoggle=<C-a>
command AbsPath echo expand('%:p')

" turn off error beeping and flashing
set visualbell
set t_vb=

" status bar settings
set ruler
set showcmd
set showmode
set laststatus=2
set cmdheight=2

" search settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" encoding settings
set encoding=utf-8
set fileencodings=utf-8,default,big5

" indentation settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set copyindent

autocmd BufNewFile,BufRead *.phtml set filetype=php

augroup xmlfiletype
    autocmd!
    autocmd FileType xml set noexpandtab
augroup END

" NERDTree Settings
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" let the emmet trigger key to be ctrl + z
nnoremap <c-z> <nop>
inoremap <c-z> <nop>
vnoremap <c-z> <nop>
let g:user_emmet_leader_key='<C-Z>'

" Git Gutter Colors
let g:gitgutter_override_sign_column_highlight = 0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

" fzf Settings
map <C-p> :Files<CR>
