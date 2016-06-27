""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins                                                                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'The-NERD-Tree'

" A Git pluign for NeerdTree
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'mhartington/oceanic-next'

Plugin 'christoomey/vim-tmux-navigator'

" Plugin 'ryanoasis/vim-devicons'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ekalinin/Dockerfile.vim'

Plugin 'ctrlpvim/ctrlp.vim'

" Code highlighting and linting
Plugin 'scrooloose/syntastic' "Run linters and display errors etc

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""" End Vundle

set encoding=utf8

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11

set nocompatible                  " get rid of Vi compatibility mode. SET FIRST!

syntax on                         " show syntax highlighting
filetype plugin indent on

set autoindent                    " set auto indent
set ts=2                          " set indent to 2 spaces
set shiftwidth=2
set expandtab                     " use spaces, not tab characters
set nocompatible                  " don't need to be compatible with old vim
set relativenumber                " show relative line numbers
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
set ttimeoutlen=100               " decrease timeout for faster insert with 'O'
set vb                            " enable visual bell (disable audio bell)
set ruler                         " show row and column in footer


" highlight the status bar when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif


" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Numbers
set number
set numberwidth=5

" Open new split panes to right and bottom, which feels more natural
" set splitbelow
set splitright

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable             " enable syntax highlighting (previously syntax on).
set t_Co=256              " enable 256-color mode.

colorscheme OceanicNext
set background=dark

" disable arrow keys
no <Up> <NOP>
no <Down> <NOP>
no <Left> <NOP>
no <Right> <NOP>
ino <Up> <NOP>
ino <Down> <NOP>
ino <Left> <NOP>
ino <Right> <NOP>
vno <Up> <NOP>
vno <Down> <NOP>
vno <Left> <NOP>
vno <Right> <NOP>


" Quick pairs
imap <leader> ' '' <ESC>i
imap <leader> " "" <ESC>i
imap <leader> " "" <ESC>i
imap <leader> " "" <ESC>i


autocmd vimenter * NERDTree

""" INSERT CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<F2> "F" before pasting to preserve identation

" Copy paste to/from clipboard
vnoremap <C-c>  "*y
map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"


"set up syntactyc
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:javascript_plugin_jsdoc = 1
