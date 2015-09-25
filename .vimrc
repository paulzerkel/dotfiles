set nocompatible
set ls=2
set tabstop=2
set shiftwidth=2
set ru 				"Set the ruler on
set sc 				"Show incomplete commands
set vb 				"ding! visual bell
set wmnu 			"wild menu
set ai				"auto indent
set list			"show whitespace
set smartindent
set nocindent
set go=aAce		"gui options

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
		set t_Co=256
endif

"key remapping
imap jj <Esc>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'pangloss/vim-javascript'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-css-color'
Plugin 'helino/vim-json'

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
colorscheme solarized

runtime! plugin/sensible
set listchars=tab:»\ ,trail:·,extends:>,precedes:<,nbsp:+,eol:¬
