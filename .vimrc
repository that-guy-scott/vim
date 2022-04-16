set number
set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set colorcolumn=80
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set confirm
set autoread
set hlsearch
syntax on

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'vuciv/vim-bujo'
Plug 'vim-airline/vim-airline'
Plug 'gruvbox-community/gruvbox'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'davidhalter/jedi-vim'
Plug 'preservim/nerdtree'
Plug 'machakann/vim-highlightedyank' 
call plug#end()

" set our leader key
let mapleader = ";"
nnoremap <SPACE> <Nop>

nmap <C-f> :NERDTreeToggle<CR>
nnoremap <leader>c :noh<CR>
nnoremap Y y$

nnoremap <leader>s :w<CR>
nmap ;; $
nmap aa ^

imap ;; <C-o>$
imap aa <C-o>^
"" imap jj <Esc>
let &t_SI = "\<esc>[4 q"  " blinking underline in insert mode
let &t_SR = "\<esc>[5 q"  " blinking I-beam in replace mode
let &t_EI = "\<esc>[2 q"  "2 no blink!  default cursor (usually blinking block) otherwise
