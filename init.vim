
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" Link: https://www.github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Comment
Plug 'scrooloose/nerdcommenter'

" Search highlight
Plug 'easymotion/vim-easymotion'

" Replace text with the contents of a register
Plug 'vim-scripts/ReplaceWithRegister'

" Search patterns in files
Plug 'mileszs/ack.vim'

" Control + P to search files 
Plug 'ctrlpvim/ctrlp.vim'

" List directory with -
Plug 'tpope/vim-vinegar'

" Autosave
Plug 'vim-scripts/vim-auto-save'

" Provides syntax highlighting and improved indentation
Plug 'pangloss/vim-javascript'

" Theme
Plug 'NLKNguyen/papercolor-theme'

" Snippet solutions
Plug 'SirVer/ultisnips'

" Buffer explorer
Plug 'jlanzarotta/bufexplorer'

" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Vim-vue
Plug 'posva/vim-vue'

" Automatic closing quotes, parenthesis, etc.
Plug 'Raimondi/delimitMate'

" Highlighting the word to replace
Plug 'osyo-manga/vim-over'

" Git vim
Plug 'tpope/vim-fugitive'

" Add, replace and remove quotes
Plug 'tpope/vim-surround'

"
Plug 'wellle/targets.vim'

"
Plug 'kana/vim-textobj-user'

"
Plug 'kana/vim-textobj-user/wiki'

" Search and replace across many files
Plug 'skwp/greplace.vim'

" Rename directories and files using vim editing commands
Plug 'qpkorr/vim-renamer'

" Initialize plugin system
call plug#end()

" Define global variables
let mapleader = ","

" Autosave Configuration
let g:auto_save = 1  " enable AutoSave on Vim startup

" Autocomplete variables
let g:deoplete#enable_at_startup = 1

" CtrlP Configuration
let g:ctrlp_max_files=0

"Ignored files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/node_modules/*,*/bower_components/*
set wildignore+=*.ttf,*.svg,*.eot,*.woff,*.woff2,*.min.js
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.bz2,*.gz,*.tar,*.xz,*.zip
set wildignore+=*.epub,*.mobi,*.pdf
set wildignore+=__init__.*
set wildignore+=*.xml
set wildignore+=*.jar						" java archives
set wildignore+=*.luac						" Lua byte code
set wildignore+=*.pyc						" Python bytecode

" Define config parameters
set nocompatible
set relativenumber

" Define theme variables
syntax on
colorscheme PaperColor
set background=light
set t_Co=256

" Navigate on tabs with Shift +l|h direction
noremap <S-l> gt
noremap <S-h> gT

" TABS AND INDENTATION
filetype plugin indent on
set tabstop=4							" show  existing tab with 4 spaces width
set shiftwidth=4						" when indenting with '>' use 4 spaces width
set expandtab							" On pressing tab, insert 4 spaces
set relativenumber						" show line numbers on files
set softtabstop=4						" when hitting <BS>, pretend like a tab is removed, even if spaces

" GENERAL CONFIG
set title							" change the terminal's title
set statusline+=%F
set list							" Visual see the spaces and trails
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set cursorline							" Highlight the current line

set splitbelow							" Split right and bottom always
set splitright

set guioptions-=r						" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=R
set guioptions-=l
set guioptions-=L

" SOUND
set visualbell							" dont beep

" 80 LINES BACKGROUND
" ==================
set colorcolumn=80

" Always use vertical diffs
set diffopt+=vertical
