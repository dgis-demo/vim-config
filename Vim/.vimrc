set encoding=utf-8
set number
syntax enable
"set scrolloff=7
set backspace=indent,eol,start

set noswapfile
set noequalalways

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set splitright
set colorcolumn=73
set hlsearch

colorscheme ron

" File browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_winsize=30

" Status line
function! GitBranch()
    let l:branch = system('git rev-parse --abbrev-ref HEAD 2>/dev/null')
    return empty(l:branch) ? '' : '  '.trim(l:branch)
endfunction

set statusline=%f\ %h%m%r%=%{GitBranch()}\ %y\ %p%%\ %l:%c
set laststatus=2

nnoremap d "_d
xnoremap d "_d
xnoremap p "0p

"nmap <S-j> :bp<CR>
"nmap <S-k> :bn<CR>
nmap <S-j> :tabprev<CR>
nmap <S-k> :tabnext<CR>
nmap <S-h> :wincmd w<CR>
nnoremap <Esc>1 :Vexplore<CR>
nnoremap <Esc>2 :vert terminal<CR>
tnoremap <Esc>2 <C-\><C-n>:set nonumber<CR>

vnoremap y :w !xclip -sel clipboard<CR> 
nnoremap p :r !xclip -sel clipboard -o<CR>
"xnoremap p :!xclip -sel clipboard -o<CR>
