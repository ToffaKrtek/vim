set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set number
set foldcolumn=2

colorscheme darkblue
syntax on
"set mouse=a
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'           
Plug 'majutsushi/tagbar'            
Plug 'fisadev/FixedTaskList.vim'   
Plug 'freeo/vim-kalisi'
Plug 'ervandew/supertab'
call plug#end()
map <C-b> :NERDTreeToggle<CR>
