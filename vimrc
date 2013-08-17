"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My vimrc is based on the the vimrc of Amix:
" 	http://amix.dk/vim/vimrc.html
" I really like his style,but I also add my own features
" such as vundle,ctrlp,ultisnips,etc.
"
"Author:xautjzd
"Homepage:http://xautjzd.github.com
"Email:xautjzd@gmail.com
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               "disable vi compatibility
filetype off                   "required!

"Set how many lines of history Vim has to remember
set history=1000

"Display the line number
set number

set autoindent
set tabstop=4      "设置Tab键宽度
set shiftwidth=4   "换行时行间交错使用4个空格

set backspace=2    "设置退格键
set cindent shiftwidth=4  "自动缩进4空格
set smartindent    "智能自动缩进

set encoding=utf-8
set fileencoding=utf-8
set guifont=*

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim GUI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Highlight the current line
set cursorline

"Highlight the search result and incremental search
set hlsearch
set incsearch

"Status line config
set laststatus=2  "Always show the status line
set noshowmode
set t_Co=256

"Set the colortheme of vim
colorscheme molokai


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim plugin config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Inc_Winwidth=0
let Tlist_Process_File_Always=1
let Tlist_File_Fold_Auto_Close=1
set autochdir

"Set tagbar window width
let g:tagbar_width=20


"Set YouCompleteMe trigger key 
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']


"Set shorcut key
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle/  "set runtimepath
call vundle#rc()

" let Vundle manage Vundle  
Bundle 'gmarik/vundle'

"File Tree plugin NERDTree
Bundle 'scrooloose/nerdtree'

"File switch from on to another
Bundle 'kien/ctrlp.vim'

"My Bundles here
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'

"vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

"snippets
Bundle 'SirVer/ultisnips'
"Bundle 'vim-scripts/snipMate'

"Syntax highlight
Bundle 'cucumber.zip'
Bundle 'Markdown'

"Utility
Bundle 'majutsushi/tagbar'
"迄今为止最好的VIM自动补全插件
Bundle 'Valloric/YouCompleteMe'
"Bundle 'SuperTab'
Bundle 'repeat.vim'
Bundle 'surround.vim'
Bundle 'file-line'

"code comment and decomment
Bundle 'tomtom/tcomment_vim'

"ColorScheme
Bundle 'tomasr/molokai'

"Airline
Bundle 'bling/vim-airline'

"Navigation
Bundle "http://github.com/gmarik/vim-visual-star-search.git"


"Enable filetype plugins
filetype plugin on     "enable loading the plugin files for specific file types
filetype indent on     "enable loading the indent file for specific file types(针对不同文件类型缩进)
