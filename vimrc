set encoding=utf-8

" Plugsin
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'} | Plug 'kien/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'

call plug#end()

" General settings
let mapleader=' '

" Set Indent to 4 (Change "4" to Any Integer):
set shiftwidth=4 tabstop=4 softtabstop=4 autoindent smartindent expandtab
set updatetime=100
set cursorline

" Wild mode
set wildmenu
set wildmode=longest,list,full

" Key bindings
nnoremap <leader>s :so ~/.vimrc<CR>
nnoremap Q <nop>
nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left>> :vertical resize +2<CR>
nnoremap <Right>> :vertical resize -2<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>n :set invnu invrnu<CR>
nnoremap <leader>l :set foldmethod=syntax<CR>
nnoremap <leader><C-l> :set nofoldenable<CR>
nnoremap <leader><Space> :CtrlP<CR>

" Color options
colorscheme gruvbox
set background=dark
set termguicolors

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" Status line
set laststatus=2
set statusline=
"" show file type
set statusline+=\ %y
"" show file path
set statusline+=%#GruvboxBlueSign#
set statusline+=\ %f
"" got right
set statusline+=%=
"" show column
set statusline+=%#GruvboxYellowSign#
set statusline+=\ [%c]
"" show line numbers
set statusline+=%#GruvboxRedSign#
set statusline+=\ %l/%L
