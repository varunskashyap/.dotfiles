call plug#begin('~/.vim/plugged')

" Color scheme
Plug 'morhetz/gruvbox'

" Syntax
Plug 'jiangmiao/auto-pairs'

" Comments
Plug 'sudar/comments.vim'

"Competitive companion
Plug 'jmerle/competitive-companion'

call plug#end()

syntax on

set clipboard=unnamedplus
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set relativenumber number
set nowrap
set noswapfile
set nobackup
set undofile
set incsearch

set background=dark
set t_Co=256
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox

