set encoding=utf-8

" Plugsin
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'} | Plug 'kien/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
"Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
"Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'yegappan/taglist'
Plug 'mileszs/ack.vim'

call plug#end()

" General settings
let mapleader=' '

" Set Indent to 4 (Change "4" to Any Integer):
set shiftwidth=4 tabstop=4 softtabstop=4 autoindent smartindent expandtab
set updatetime=100
set cursorline

filetype on
filetype plugin on

" Wild mode
set wildmenu
set wildmode=longest,list,full

" Key bindings
nnoremap <leader>s :so ~/.vimrc<CR>
nnoremap Q <nop>
nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>n :set invnu invrnu<CR>
nnoremap <leader>l :set foldmethod=syntax<CR>
nnoremap <leader><C-l> :set nofoldenable<CR>
nnoremap <leader><Space> :CtrlP<CR>

" Color options
"let g:lightline = {
    "\ 'colorscheme': 'Tomorrow_Night',
    "\ }
colorscheme gruvbox
set background=dark
set termguicolors

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" TagList options
nnoremap <F8> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen = 1

" Status line
set laststatus=2

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Turn Limelight on/off on Goyo enter/exit
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Turn on vim-rainbow globally or for specific files
au FileType c,cpp,objc,objcpp call rainbow#load()
" let g:rainbow_active = 1

" Dont show commands with lightline
set noshowmode
