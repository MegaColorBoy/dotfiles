"VIM Plugins"
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'ajmwagar/vim-deus'
Plug 'dracula/vim', {'name':'dracula'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'reedes/vim-pencil'
Plug 'nanotech/jellybeans.vim'
Plug 'sjl/badwolf'
Plug 'junegunn/limelight.vim'
Plug 'xavierd/clang_complete'
"Plug 'ycm-core/YouCompleteMe', {'do': './install.py'}"
Plug 'plasticboy/vim-markdown'
Plug 'artanikin/vim-synthwave84'

"Javascript plugins"
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'

call plug#end()
"VIM Plugins"
map <C-n> :NERDTreeToggle<CR>

let g:user_emmet_leader_key=','
let g:clang_library_path='/usr/lib/llvm-6.0/lib/libclang-6.0.so.1'
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['c++=cpp', 'python=py', 'bash=sh', 'javascript=js', 'php=php', 'sql=sql']

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set cursorline
set showmatch
set wildmenu

set t_Co=256
set termguicolors
"set guifont=Monaco:h9"
syntax enable
colorscheme badwolf
"colorscheme slate"
"set background=dark"
let g:airline_theme='minimalist'
let g:badwolf_darkgutter=1
let g:badwolf_tabline=0

set nocompatible
filetype on
filetype plugin on
filetype indent on

let g:pencil#wrapModeDefault='soft'
augroup pencil
	autocmd!
	autocmd FileType markdown,mkd call pencil#init()
	autocmd FileType text call pencil#init()
    autocmd FileType jrnl call pencil#init()
augroup END

set spell spelllang=en_gb

autocmd VimEnter *.jrnl $pu=strftime('%n[%a, %d %b %Y %T %z]%n%n')
autocmd VimEnter *.jrnl setl number
autocmd VimEnter *.jrnl set cursorline
