" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

colorscheme 256_noir

" Vundler settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'klen/python-mode'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

let mapleader=","

set number
set relativenumber
set incsearch
set hlsearch
set backspace=indent,eol,start
set showcmd
set showmatch
set laststatus=2
set wildmenu
set nofoldenable

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" python-mode
" let g:pymode_rope=0

map <C-n> :NERDTreeToggle<CR>

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='luna'

syntax enable " syntax highlighting
set hidden " leave hidden buffers open
set history=100

nnoremap <C-J> <C-W><C-J> "Ctrl-j to move down a split
nnoremap <C-K> <C-W><C-K> "Ctrl-k to move up a split
nnoremap <C-L> <C-W><C-L> "Ctrl-l to move right a split
nnoremap <C-H> <C-W><C-H> "Ctrl-h to move left a split

noremap <C-d> :sh<cr>
nnoremap <CR> :nohlsearch<CR><CR>
noremap <leader>s :w<cr>
inoremap <leader>, <esc>
nnoremap <Leader>c :set cursorline!<cr>
nnoremap <Leader>f 1z=
