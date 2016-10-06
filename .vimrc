set nocompatible
set ls=2
set ru                  " Set the ruler on
set sc                  " Show incomplete commands
set vb                  " ding! visual bell
set wmnu                " wild menu
set go=aAce             " gui options
set mouse=a             " because i like mousewheel scrolling
set number              " show line numbers
set list                " show whitespace
set cursorline          " show what line the cursor is on

" just tab things
set smartindent
set autoindent          " auto indent
set tabstop=2           " two spaces
set shiftwidth=2        " two spaces
set expandtab           " lets use spaces instead of tabs
set smarttab            " handle backspacing tabs

set clipboard=unnamed   " use the system clipboard
set ignorecase          " ignore casing
set smartcase           " use smart casing with search

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

"key remapping
imap jj <Esc>

"start vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-css-color'
Plugin 'helino/vim-json'
Plugin 'chriskempson/base16-vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'scrooloose/syntastic'
Plugin 'pmsorhaindo/syntastic-local-eslint.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable
set background=dark
colorscheme base16-solarized-dark
highlight SpecialKey term=underline ctermfg=8 ctermbg=10 guifg=#657b83 guibg=#073642
set listchars=tab:»\ ,trail:·

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" Neocomplete settings
let g:neocomplete#enable_at_startup = 1

" Vim-go settings
let g:go_fmt_command = "goimports"

runtime! plugin/sensible
