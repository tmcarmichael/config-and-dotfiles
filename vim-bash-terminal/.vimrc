set nocompatible
filetype off

" Plugins:
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/badwolf'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline'
call vundle#end()
filetype plugin indent on
" au VimEnter *  split
" au VimEnter *  terminal
au VimEnter *  NERDTree

" Settings:
colorscheme badwolf
" hi Normal ctermbg=none
syntax on
filetype off
filetype plugin indent on
let mapleader = ","
set textwidth=80
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set modelines=0
set number
"set relativenumber
set ruler
set encoding=utf-8
set wrap
set scrolloff=3
set listchars=tab:▸\ ,eol:¬
set list
set backspace=indent,eol,start
set matchpairs+=<:>
set nocompatible
set hidden
set ttyfast
set laststatus=2
set showmode
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Remap Keys:
map <leader><space> :let @/=''<cr> " clear search
map <leader>q gqip
noremap j gj
noremap k gk
noremap B ^
noremap E $
noremap $ <nop>
noremap ^ <nop>
noremap <leader>ev :vsp $HOME/.vimrc<CR>
noremap <leader>ez :vsp ~/.zshrc><CR>
nnoremap <PageDown> 10j
nnoremap <PageUp> 10k
nnoremap / /\v
vnoremap / /\v
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>
nnoremap <silent><C-L> :call g:ToggleNumber()<cr>
" test:
nnoremap <F11> :w !sudo tee %
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>


" Functions:

" cursor change in tmux
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" toggle number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
