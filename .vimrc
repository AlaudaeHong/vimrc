" Setup Vundle git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" run vim +PluginInstall +qall

"Remember to use :retab to convert tab to 4 spaces

" vim plugin manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" add your plugin here

Plugin 'VundleVim/Vundle.vim'               " required
Plugin 'scrooloose/nerdtree'                " file/directory treee
Plugin 'scrooloose/nerdcommenter'           " code commenter
Plugin 'kien/ctrlp.vim'                     " Fuzzy file, buffer, mru, tag, etc finder
Plugin 'altercation/vim-colors-solarized'   " Colorscheme solarized
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()            " required
filetype plugin indent on    " required 

" vim basic configuration
set number

set ruler
set history=1000

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set laststatus=2
syntax on
set fileencodings=utf-8,gb2312,gbk,cp936,latin-1
set fileencoding=utf-8
set termencoding=utf-8
set fileformat=unix
set encoding=utf-8

set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set t_Co=256

set wildmenu

set nocompatible
set backspace=indent,eol,start
set backspace=2

set showcmd
set autoindent

set smartindent

set nobackup
set nowritebackup
set noswapfile

set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4

set showmatch

au FileType html,python,vim,javascript setl shiftwidth=4
au FileType html,python,vim,javascript setl tabstop=4
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
set hlsearch

filetype on
filetype plugin on
filetype indent on

set cindent
set completeopt=longest,menu

set autowrite
set clipboard=unnamed
set autoread
set scrolloff=3

" NERDTree configuration
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" use ctrl n to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Indent Guide configuration
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=darkgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=lightgrey
