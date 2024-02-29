" > Settings
" Vim's default behavior.
if &compatible
  set nocompatible
endif

" Add numbers to each line on the left-hand side.
set number

" Relative numbers for jumping.
set number relativenumber   

" Show the current line number.
set nu rnu  

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Minimal number of lines to scroll when the cursor gets off the screen (default 1)
set scrolloff=10

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Autoindent always on
set autoindent

" Enable undo/backup/swap files.
set undofile
set backup
set swapfile

set undolevels=1000
set undoreload=10000

" Set the undo/backup/swap directory,
" the // is means no conflicts if two files have the same filename.
set undodir   =~/.vim/tmp/undo//
set backupdir =~/.vim/tmp/backup//
set directory =~/.vim/tmp/swap//

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" Buffer becomes hidden when it is abandoned.
set hidden

" Enable virtual line wrapping.
set wrap

" Wrap on words boundaries.
set linebreak

" Turn off physical line wrapping.
set textwidth=0 
set wrapmargin=0

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Use highlighting when doing a search.
set hlsearch

" While searching through a file incrementally highlight matching characters as you type.
set incsearch

" Show matching words during a search.
set showmatch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Disable bell sounds.
set belloff=all

" Encoding.
set encoding=utf-8

" Show file stats.
set ruler

" Show column at 120 characters.
set colorcolumn=120

" Pop up menu to show the possible completions.
set completeopt=longest,menuone

" Cross-platform value configuration for clipboard.
set clipboard^=unnamed,unnamedplus

" Search down into subfolders,
" provides tab-completion for all file-related tasks.
set path+=**

" Turn syntax highlighting on.
syntax on

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" > Plugins
" Vim plugins using vim-plug manager. [https://github.com/junegunn/vim-plug]
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-tmux-navigator'
Plug 'altercation/vim-colors-solarized'
Plug 'embear/vim-localvimrc'


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

" > Color
colorscheme solarized
set background=dark

" > Mappings
" Set the leader key
let mapleader=' '

" Open Explore with <leader>pv.
map <silent> <leader>pv :Explore<CR>

" Window navigation
noremap <silent> <C-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <C-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <C-k> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <C-l> :<C-U>TmuxNavigateRight<cr>
noremap <silent> {Previous-Mapping} :<C-U>TmuxNavigatePrevious<cr>

" Map the <Plug>NetrwRefresh command to something else to release <C-l> map.
nmap <leader><leader><leader><leader><leader><leader>l <Plug>NetrwRefresh

" > Commands
" Generate tags recursively in the working dir. (req. ctags installed).
command! MakeTags !ctags -R .

" > Netrw
let g:netrw_banner = 1
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_winsize = 20

" > TMUX
" Define custom tmux navigator maps.
let g:tmux_navigator_no_mappings = 1

" Write all buffers before navigating from Vim to tmux pane.
"let g:tmux_navigator_save_on_switch = 2

" Disable tmux navigator when zooming the Vim pane.
let g:tmux_navigator_disable_when_zoomed = 1

" If the tmux window is zoomed, keep it zoomed when moving from Vim to another pane.
let g:tmux_navigator_preserve_zoom = 1

" > Localvimrc
let g:localvimrc_ask = 0
