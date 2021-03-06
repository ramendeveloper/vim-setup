" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'prettier/vim-prettier'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'quramy/tsuquyomi'

" Ruby
Plugin 'vim-ruby/vim-ruby'

" Liquid
Plugin 'tpope/vim-liquid'

call vundle#end()

colorscheme onehalflight 

map <C-b> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Turn on syntax highlighting.
syntax on

" Fix window size
autocmd VimEnter * set winfixwidth

" For plug-ins to load correctly.
filetype plugin indent on

" Automatically wrap text that extends beyond the screen length.
set wrap
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

set matchpairs+=<:>

" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

set guifont=Roboto\ Mono:h18
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

syntax enable 

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

set number

" Autoindent, make tab=4 spaces, smart indenting
set expandtab
set shiftwidth=4
set autoindent
set smartindent
