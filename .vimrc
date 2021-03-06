set shell=zsh
set t_Co=256
set term=screen-256color

syntax on 
colorscheme badwolf
set bg=dark

set hlsearch
set incsearch

set smartindent
set shiftwidth=2
set tabstop=2
set expandtab

set clipboard^=unnamed  

set number
set showcmd
set showmatch

set mouse=a
set ttymouse=xterm

set laststatus=0
set noruler
set noshowcmd
set noshowmode

set noerrorbells
set novisualbell
set magic

let mapleader=","

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3

let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|target/|[\/]\.(o|swp|pyc|egg|git|hg|svn)$'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files=0

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set nocompatible              
filetype off
filetype indent on

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/nerdtree
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'bling/vim-airline'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on 
filetype plugin on

execute pathogen#infect()

augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title

set runtimepath^=~/.vim/bundle/ctrlp.vim
