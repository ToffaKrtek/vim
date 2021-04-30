set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set foldcolumn=2
colorscheme industry 
syntax on
set mouse=a
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d
set ignorecase
set smartcase
set hlsearch
set incsearch
filetype plugin on
set omnifunc=syntaxcomplete#Complete
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
call plug#end()

autocmd vimenter * NERDTree.
map <leader>n :NERDTreeFocus<CR>
map <C-n> :NERDTree<CR>
map <C-t> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
