set nocompatible      " We're running Vim, not Vi!
syntax enable
execute pathogen#infect()
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set number
set relativenumber
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set colorcolumn=91
"Split window more like tmux
nnoremap <C-w>" <C-w>s
nnoremap <C-w>% <C-w>v
"Split navigation using h/j/k/l
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"Natural split opening
set splitbelow
set splitright
"quit insert-mode when pressing up and down keys
inoremap <silent> <Up> <ESC><Up>
inoremap <silent> <Down> <ESC><Down>
"quit insert-mode when using navigation control keys
inoremap <C-J> <ESC><C-W><C-J>
inoremap <C-K> <ESC><C-W><C-K>
inoremap <C-L> <ESC><C-W><C-L>
inoremap <C-H> <ESC><C-W><C-H>
"restrict fileformat to unix, to avoid problems in git repositories
set fileformats=unix
"status line, including branch name from fugitive
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2
"allow backspacing over everything in insert mode (needed on MAC)
set backspace=indent,eol,start
"Highlight current buffer
augroup HighlightCurrent
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END
colorscheme Tomorrow-Night
"Force Gdiff in vertical mode"
"set diffopt+=vertical"
