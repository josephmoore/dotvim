set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.vim' "required
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mattn/emmet-vim'
Plugin 'gregsexton/MatchTag'
Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'
Plugin 'sophacles/vim-processing'
Plugin 'kshenoy/vim-signature'
Plugin 'moll/vim-bbye'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mhinz/vim-startify'
call vundle#end()            " required
filetype plugin indent on    " required

"============= BASIC CHANGES
set number           
set ruler
set showcmd
set virtualedit=all
set splitbelow
set nowrap
set breakindent                   

let mapleader=","
if has('mouse')
  set mouse=n
endif
set autochdir
"set termguicolors
"switch current and next word
nmap <leader>x :s/\v(<\k*%#\k*>)(\_.{-})(<\k+>)/\3\2\1/ <CR>
"yank to clipboard
map <leader>y "+y
"paste from clipboard
map <leader>p "+P
"turn on matchit
filetype plugin on
runtime macros/matchit.vim
"set column 
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=#010114
highlight LineNr ctermfg=240
set background=dark
"put swap files in tmp directory ~/.vim/tmp/
set directory^=$HOME/.vim/tmp/
" Always show statusline
set laststatus=2

"============= BROWSER FILE INTERACTION
"fixes issues with g+x
let g:netrw_browsex_viewer= "xdg-open"
"open current file in browser
noremap <Leader>c :exe 'silent !chromium-browser %'<CR>
noremap <Leader>f :exe 'silent !firefox %'<CR>
  
"============= MOVING AROUND IN COMMAND MODE
cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>

"============= LANGUAGES
"general
set tabstop=4 expandtab shiftwidth=2 softtabstop=2
"python
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
map ; :CtrlPBuffer<CR>

"NERDtree
map <C-e> :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

"jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#completions_enabled = 1
let g:jedi#show_call_signatures = "1"

"bbye deletes buffer without changing layout
nnoremap <Leader>q :Bdelete<CR>
