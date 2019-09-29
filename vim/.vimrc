set nu
set shortmess=atI
set nocompatible
set backspace=indent,eol,start
set t_Co=256
set cursorline
"set guifont=Monaco\ for\ Powerline:h14.5 
set laststatus=2
"set showtabline=2
set noshowmode

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

colorscheme onedark

map <F12> :NERDTreeToggle<CR> 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'