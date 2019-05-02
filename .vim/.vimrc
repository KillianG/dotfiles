set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required

Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'airblade/vim-gitgutter'
Plugin 'LeBarbu/vim-epitech'
Plugin 'nanotech/jellybeans.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sjl/gundo.vim'

call vundle#end()
filetype plugin indent on

"scheme
colorscheme jellybeans

"ultisnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"256 colors
set t_Co=256

"mouse
set mouse=a

"Correct indentation
filetype plugin indent on

"Background/color
set background=dark

"Better search
set incsearch
set hlsearch

"widldmenu
set wildmenu

"80 lines
set colorcolumn=80

"Show line numbers
set number
set relativenumber
hi linenr ctermbg=none

"Avoid usless redraw
set lazyredraw

"Syntax processing
syntax on

"Invisibles
set listchars=tab:..,eol:¬,trail:~
set list
hi NonText ctermfg=241 ctermbg=none
hi SpecialKey ctermfg=241 ctermbg=none

"f5 for NERDtree f6 gundo :o
nnoremap <F6> :GundoToggle<CR> 
nnoremap <F5> :NERDTreeTabsToggle<CR>

"For Epitech/ f2->tab /tab-> 2espace
inoremap <F2> <c-v><Tab>
set softtabstop=2
set shiftwidth=2

"powerline vim
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"header
let g:epi_login = 'erwan.bernard'
let g:epi_name = 'Erwan Bernard'
