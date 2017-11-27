set shortmess=atI " 隐去援助信息
set number " 显示行号
set nocompatible 
set smartindent
set laststatus=2
set backspace=indent,eol,start
filetype off
syntax on
set t_Co=256

map <F6> :tabnew .<CR>
"map <C-W> :q<CR>
imap <C-C> <ESC> 
" 插件列表
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " vundle插件管理器
Plugin 'flazz/vim-colorschemes' " vim主题
Plugin 'vim-airline/vim-airline' " 状态栏
Plugin 'Valloric/YouCompleteMe'  " ycm自动补全
Plugin 'Raimondi/delimitMate'   " 括号引号自动补全
Plugin 'scrooloose/nerdtree'  " 文档树浏览
Plugin 'Chiel92/vim-autoformat' " 代码格式化
Plugin 'scrooloose/nerdcommenter' " 注释和反注释
Plugin 'SirVer/ultisnips'    " 代码片段引擎
Plugin 'honza/vim-snippets'  "代码片段集合
Plugin 'nathanaelkane/vim-indent-guides' " 对齐线
call vundle#end()            " required

filetype plugin indent on    " required

" nerdtree配置
map <F12> :NERDTreeToggle<CR> 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

colorscheme molokai

" 自动格式化快捷键
noremap <F3> :Autoformat<CR>

" 代码片段快捷键
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" 全局ycm配置文件
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" 默认显示对齐线
let g:indent_guides_enable_on_vim_startup = 1

set completeopt-=preview
