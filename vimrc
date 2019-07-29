set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.vim' "required
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mattn/emmet-vim'
"Plugin 'ratazzi/blackboard.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'mhinz/vim-startify'
"Plugin 'davidhalter/jedi-vim'
Plugin 'sophacles/vim-processing'
Plugin 'kshenoy/vim-signature'
Plugin 'moll/vim-bbye'
"Plugin 'pangloss/vim-javascript'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()            " required
filetype plugin indent on    " required

"Plugin 'ctrlpvim/ctrlp.vim'
"============= BASIC CHANGES
"set tabstop=2
"set softtabstop=2
"set shiftwidth=2
"set expandtab
set number           
set ruler
set showcmd
set virtualedit=all
set splitbelow
set nowrap
set breakindent
let mapleader=","
let g:netrw_browsex_viewer= "xdg-open"
set mouse=n
"switch current and next word
nmap <leader>x :s/\v(<\k*%#\k*>)(\_.{-})(<\k+>)/\3\2\1/ <CR>
"yank to clipboard
map <leader>y "+y
"paste from clipboard
map <leader>p "+P
"turn on matchit
filetype plugin on
runtime macros/matchit.vim

"============= MOVING AROUND IN COMMAND MODE
cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>

"============= LANGUAGES
"set tabs for php files
set tabstop=4 expandtab shiftwidth=2 softtabstop=2
"set tabs for python files
autocmd FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
autocmd FileType python syntax keyword pyself self
autocmd Filetype python highlight pyself ctermfg=202 guifg=Orange

"============= GUI
set guioptions-=T  "remove toolbar
"============= PLUGINS
"remap emmet's key combination to tab
imap <expr> <S-tab> emmet#expandAbbrIntelligent("\<tab>")

"remap ctrlp
let g:ctrlp_show_hidden=1
let g:ctrlp_map = '<Leader>cp' "avoid collision with yankring
let g:ctrlp_cmd = 'CtrlP'
map ; :CtrlPBuffer<CR>

"Theme
set t_Co=256
set background=dark

"colorscheme
"color blackboard

"NERDtree
map <C-e> :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

"jedi-vim
"let g:jedi#popup_on_dot = 0

"bbye deletes buffer without changing layout
:nnoremap <Leader>q :Bdelete<CR>

"set column 
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=#010114

"put swap files in tmp directory ~/.vim/tmp/
set directory^=$HOME/.vim/tmp/

" Always show statusline
set laststatus=2


"open current file in browser
noremap <Leader>c :exe 'silent !chromium-browser %'<CR>
noremap <Leader>f :exe 'silent !firefox %'<CR>

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
let g:Powerline_symbols = 'fancy'
