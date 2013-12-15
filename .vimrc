set nocompatible
set ls=2
set tabstop=2
set shiftwidth=2
set ru 				"Set the ruler on
set sc 				"Show incomplete commands
set vb 				"ding! visual bell
set wmnu 			"wild menu
set ai				"auto indent
set smartindent
set nocindent
set go=aAce		"gui options

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
	set t_Co=256
endif

"key remapping
imap jj <Esc>
map <Leader>t :NERDTreeToggle<CR>

"Vundle stuff
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'pangloss/vim-javascript'
Bundle 'goatslacker/mango.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'scrooloose/syntastic'
Bundle 'ap/vim-css-color'
Bundle 'wavded/vim-stylus'
Bundle 'scrooloose/nerdtree'
Bundle 'gregsexton/MatchTag'

set background=dark
syntax on
color mango

filetype plugin indent on

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
