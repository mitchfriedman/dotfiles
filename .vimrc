set shell=zsh
set t_Co=256

syntax on 
colorscheme tomorrow-night
set bg=dark

set hlsearch
set incsearch

set smartindent
set shiftwidth=4
set tabstop=4
set expandtab

set number
set showcmd
set showmatch

set noerrorbells
set novisualbell
set magic

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|target/|[\/]\.(o|swp|pyc|egg|git|hg|svn)$'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


set laststatus=2

set nocompatible              
filetype off
filetype indent on

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/Users/Mitch/code/ctrlp.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on 

augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

