
syntax enable               " 支持语法高亮显示

filetype plugin indent on   " 启用根据文件类型自动缩进

set autoindent              " 开始新行时处理缩进

set expandtab               " 将制表符Tab 扩展为空格，这对于python尤其有用

set tabstop=4               " 要计算的空格数

set shiftwidth=4            " 用于自动缩进的空格数

set backspace=2             " 在多数终端上修正退格 Backspace 的行为

set showcmd                 " 显示键入指令

set mouse=a                 " 支持鼠标

set foldmethod=indent       " 基于缩进的代码折叠

set hlsearch                " 高亮搜索

set number                  " 显示行号

set incsearch               " 增量搜索

set guifont=Monaco:h16      " 设置字体字号

packloadall                 " 加载所有插件

silent! helptags ALL        " 为所有插件加载帮助文档

let mapleader=","           " 设置先导键


set t_Co=256                 " 启用256色

set cursorline               " 光标所在的当前行高亮

if has('python3')
    let g:gundo_prefer_python3 = 1
endif

set nobackup

set undofile

set undodir=~/.vim/undodir/

if !isdirectory(&undodir)
    call mkdir(&undodir, 'p', 0700)
endif


au BufWrite * :Autoformat   " 保存后格式代码

let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

call plug#begin()

let g:plug_timeout = 300    " 为YouCompleteMe增加vim-plug 的超时时间
Plug 'Valloric/YouCompleteMe', { 'do':'/usr/local/bin/python3 install.py' }
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'sjl/gundo.vim'
Plug 'preservim/nerdcommenter'
Plug 'vim-geek/webpack.vim'
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme PaperColor       " 修改配色
