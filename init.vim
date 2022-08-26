set encoding=utf-8
set number
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

" VimPlug plugins 
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'kassio/neoterm'
call plug#end()

colorscheme gruvbox

let g:airline_theme='gruvbox'

if (has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()

" Editing
"

" Shift+Space (@ - space)
inoremap <S-Space> <C-o>$

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
"let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
nmap <A-1> :NERDTreeToggle<CR>
nmap <S-h> :NERDTreeFocus<CR>

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <S-j> :bp<CR>
nmap <S-k> :bn<CR>
nmap <C-w> :bd<CR>

" Neoterm
let g:neoterm_default_mod = 'botright'
let g:neoterm_size = 10
let g:neoterm_autoinsert = 1
let g:neoterm_autoscroll = 1
"let g:neoterm_term_per_tab = 1
nnoremap <A-2> :Ttoggle<CR>
inoremap <A-2> :Ttoggle<CR>
tnoremap <A-2> exit<CR>
