syntax on " Enable syntax highlighting. 
set clipboard=unnamed " Copy to the host's clipboard
set showcmd " Show the commands I'm executing
set nocompatible " Define config parameters
set relativenumber
set visualbell " dont beep
set diffopt+=vertical " Always use vertical diffs
set colorcolumn=80 " 80 lines background

" Navigate on tabs with Shift +l|h direction
noremap <S-l> gt
noremap <S-h> gT

" Tabs and indentation AND INDENTATION
filetype plugin indent on
set tabstop=4							" show  existing tab with 4 spaces width
set shiftwidth=4						" when indenting with '>' use 4 spaces width
set expandtab							" On pressing tab, insert 4 spaces
set relativenumber						" show line numbers on files
set softtabstop=4						" when hitting <BS>, pretend like a tab is removed, even if spaces

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

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" Link: https://www.github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Theme
Plug 'NLKNguyen/papercolor-theme'
"
" Comment
Plug 'scrooloose/nerdcommenter'

" File system explorer
Plug 'preservim/nerdtree'

" List file system explorer using -
Plug 'tpope/vim-vinegar'

" Twig
Plug 'lumiliet/vim-twig'

" Search highlight
Plug 'easymotion/vim-easymotion'

" Replace text with the contents of a register
Plug 'vim-scripts/ReplaceWithRegister'

" Search patterns in files
Plug 'mileszs/ack.vim'

" Control + P to search files 
Plug 'ctrlpvim/ctrlp.vim'

" Autosave
Plug 'vim-scripts/vim-auto-save'

" Provides syntax highlighting and improved indentation
Plug 'pangloss/vim-javascript'

" Autocomplete
Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Buffer explorer
Plug 'jlanzarotta/bufexplorer'

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

" Search and replace across many files
Plug 'skwp/greplace.vim'

" Rename directories and files using vim editing commands
Plug 'qpkorr/vim-renamer'

" Typescript highlighting
Plug 'leafgarland/typescript-vim'

" Give an specific format to different languages
Plug 'editorconfig/editorconfig-vim'

" Preview colors in source code while editing
Plug 'ap/vim-css-color'

" Initialize plugin system
call plug#end()

" START NLKNguyen/papercolor-theme
colorscheme PaperColor
set background=light
set t_Co=256

" START Kite autocomplete
let g:kite_supported_languages = ['*']

set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert
set completeopt+=preview
autocmd CompleteDone * if !pumvisible() | pclose | endif
set belloff+=ctrlg  " if vim beeps during completion

" START ctrlpvim/ctrlp.vim: Ctrl + P Configuration
let g:ctrlp_max_files=0
" Ignore files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/node_modules/*,*/bower_components/*,*/cache/*
set wildignore+=*.ttf,*.svg,*.eot,*.woff,*.woff2,*.min.js
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.bz2,*.gz,*.tar,*.xz,*.zip
set wildignore+=*.epub,*.mobi,*.pdf
set wildignore+=__init__.*
"set wildignore+=*.xml
set wildignore+=*.jar						" java archives
set wildignore+=*.luac						" Lua byte code
set wildignore+=*.pyc						" Python bytecode
"Ignore files for SmartTurno
set wildignore+=*/global/vendor/*,*/local/vendor/*
"Ignore files for Ionic
set wildignore+=*/app/www/*
set wildignore+=*/app/plugins/*
set wildignore+=*/app/platforms/*

" START scrooloose/nerdcommenter
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments

" START vim-scripts/vim-auto-save
let g:auto_save = 0  " enable or disable AutoSave on Vim startup

" START editorconfig/editorconfig-vim
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:EditorConfig_disable_rules = ['trim_trailing_whitespace']

" START easymotion/vim-easymotion
let mapleader = ","
" 2- character search motion
nmap <Leader>s <Plug>(easymotion-s2)

" Open the tree in the left side of the screen
nmap <Leader><space> :NERDTreeFind<CR>
" Close the tree after open the file
let NERDTreeQuitOnOpen=1
