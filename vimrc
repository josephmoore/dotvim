set nocompatible
filetype off
set rtp+=~/.vim/bundle/VundleVim/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.vim' "required
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'ratazzi/blackboard.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'mhinz/vim-startify'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
call vundle#end()            " required
filetype plugin indent on    " required

"============= BASIC CHANGES
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number           
set ruler
set showcmd
set virtualedit=all
let mapleader=","
let g:netrw_browsex_viewer="setsid gnome-open" 
nnoremap <leader>w :silent !/usr/bin/firefox <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>

"============= LANGUAGES
"set tabs for python files
autocmd FileType py setlocal shiftwidth=4 tabstop=4 softtabstop=4

"============= GUI
set guioptions-=T  "remove toolbar

"============= PLUGINS
"remap emmet's key combination to tab
imap <expr> <S-tab> emmet#expandAbbrIntelligent("\<tab>")

"remap ctrlp
let g:ctrlp_show_hidden=1
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_cmd = 'CtrlP'
map ; :CtrlPBuffer<CR>

"Theme
set t_Co=256
set background=dark

"colorscheme
color blackboard

"NERDtree
map <C-e> :NERDTreeToggle<CR>

"jedi-vim
let g:jedi#popup_on_dot = 0
