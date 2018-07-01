"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle - Plugins go here
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Install Ctrl-P
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Install Emmet
Plugin 'mattn/emmet-vim'
" How to use
" type the following in your file. stay in 'insert mode' the entire time
" html:5
" While still in 'insert mode' do the following
" Hold 'Ctrl" and 'y' together for a second. then release and quickly press ','


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

" Set the line numbers to show
set nu

" Sets how many lines of history VIM has to remember
set history=500

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Remove the ^M symbols from files that where edited using Windows
map ,m <Esc>:%s/\r//g<CR>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set cindent
set cinkeys-=0#
set indentkeys-=0#
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open New Tab
map ,t <Esc>:tabnew<CR>
" t + k = Next Tab
nnoremap tk  :tabnext<CR>
" t + j = Prev Tab
nnoremap tj  :tabprev<CR>
