"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set relativenumber
set number
set cursorline
set cursorcolumn
highlight CursorColumn ctermbg=lightcyan ctermfg=black

" Set the text width to 80 and create a vertical bar in 81st column.
set textwidth=80
set colorcolumn=81

"Always show current position
set ruler

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

set background=dark
hi Comment ctermfg=lightblue


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2


""""""""""""""""""""""""""""""
" => Keys
""""""""""""""""""""""""""""""

let mapleader = ","

noremap k h
noremap n j
noremap e k
noremap i l

noremap h e
noremap j n
noremap l i

" Hide search highlighting
noremap <silent> <leader>h :nohlsearch<cr>

" Paste from yank buffer
noremap <leader>p "0p

" Go to mark
noremap <Space> `

" Fast saving
nmap <leader>w :w!<cr>

" Splits navigation
nnoremap <C-N> <C-W><C-J>
nnoremap <C-E> <C-W><C-K>
nnoremap <C-I> <C-W><C-L>
nnoremap <C-K> <C-W><C-H>

" Have backspace behave as it does in other applications.
set backspace=2

" Tab makes 4 spaces                                                             
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab 
   
nnoremap <leader>; A;    
