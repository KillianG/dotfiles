set nocompatible
filetype off


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required

Plugin 'justinmk/vim-syntax-extra'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'atelierbram/Base2Tone-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'Karyboo/vim-epitech'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/syntastic'
Plugin 'nanotech/jellybeans.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sjl/gundo.vim'
Plugin 'sjl/badwolf'
Plugin 'Raimondi/delimitMate'
Plugin 'morhetz/gruvbox'
Plugin 'rhysd/vim-clang-format'

" python plugin
Plugin 'vim-scripts/indentpython.vim'
Plugin 'kh3phr3n/python-syntax'

call vundle#end()
filetype plugin indent on

"scheme
colorscheme gruvbox
set encoding=utf-8

"syntaqusic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_cpp_compiler = "gcc"
let g:syntastic_c_compiler_options = "-W -Wall -Wextra -Wfloat-equal -Wshadow -Wpointer-arith -Wcast-align -Wstrict-prototypes -Wwrite-strings -Waggregate-return -Wconversion -Wunreachable-code -Winit-self -Wreturn-type"
let g:syntastic_cpp_compiler_options = "-W -Wall -Wextra -Wfloat-equal -Wshadow -Wpointer-arith -Wcast-align -Wstrict-prototypes -Wwrite-strings -Waggregate-return -Wconversion -Wunreachable-code -Winit-self -Wreturn-type"
let g:syntastic_c_include_dirs = [ '../include', 'include', '../lib/include', 'lib/include', 'libmy/include', '../libmy/include.h', 'includes', 'libft/includes/', '../libft/includes/']
let g:syntastic_cpp_include_dirs = [ '../include', 'include', '../lib/include', 'lib/include', 'libmy/include', '../libmy/include.h', 'includes', 'libft/includes/', '../libft/includes/', '../inc']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_highlighting = 1
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = '⚠'

"Haskell-vim
let g:haskell_enable_quantification = 1   " to enable highlighting of forall
let g:haskell_enable_recursivedo = 1      " to enable highlighting of mdo and rec
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of proc
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of pattern
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of static
let g:haskell_backpack = 1                " to enable highlighting of backpack keyword0
let g:haskell_classic_highlighting = 0

"Clang format
autocmd FileType c ClangFormatAutoEnable
let g:clang_format#code_style = 'llvm'
let g:clang_format#style_options = {
			\  "IndentWidth" : 8,
			\  "UseTab" : "Always",
			\  "AlwaysBreakBeforeMultilineStrings" : "true",
			\  "AllowShortIfStatementsOnASingleLine" : "false",
			\  "AllowShortLoopsOnASingleLine" : "true",
			\  "AllowShortFunctionsOnASingleLine" : "false",
			\  "IndentCaseLabels" : "false",
			\  "AlignEscapedNewlinesLeft": "false",
			\  "AlignTrailingComments": "true",
			\  "AllowAllParametersOfDeclarationOnNextLine": "false",
			\  "AlignAfterOpenBracket": "true",
			\  "SpaceAfterCStyleCast": "false",
			\  "MaxEmptyLinesToKeep": 2,
			\  "BreakBeforeBinaryOperators": "NonAssignment",
			\  "SortIncludes": "false",
			\  "ContinuationIndentWidth": 8,
			\  "BreakConstructorInitializers": "BeforeComma",
			\  "ConstructorInitializerIndentWidth": 8,
			\  "Standard": "Auto",
			\  "BreakBeforeBraces": "Custom",
			\  "BraceWrapping": {"AfterStruct": "false",
			\ 		     "AfterEnum" : "false",
			\ 		     "AfterUnion" : "false",
			\ 		     "AfterFunction" : "true",
\ "AfterControlStatement" : "false"}}
"256 colors
set t_Co=256

"Correct indentation
filetype plugin indent on
set cino+=g0

"Background/color
set background=dark

"Better search
set incsearch
set hlsearch

"widldmenu
set wildmenu

"80 lines
set colorcolumn=80

"cursor line
set cursorline

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

"42 header
nnoremap <F3> :Stdheader<CR>

"f5 for NERDtree f6 gundo :o
nnoremap <F6> :GundoToggle<CR>
nnoremap <F5> :NERDTreeTabsToggle<CR>

"powerline vim
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"remap ctrl + map for windows
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

"resize windows easyer
:map - <C-W>-
:map + <C-W>+

"python settings
let g:python_host_prog = '/bin/python'

au BufNewFile,BufRead *.py
			\set tabstop=4
			\set softtabstop=4
			\set shiftwidth=4
			\set textwidth=79
			\set expandtab
			\set autoindent
			\set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
			\set tabstop=2
			\set softtabstop=2
			\set shiftwidth=2

let python_highlight_all=1
syn match pythonBoolean "\(\W\|^\)\@<=self\(\.\)\@="
hi Normal ctermbg=black
