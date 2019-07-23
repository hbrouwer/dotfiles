"""" general

" Disable compatibility to classic vi (not needed for nvim)
set nocompatible

" Enable filetype detection
filetype plugin on

" Enable filetype identation
filetype indent on

" Enable enhanced command-line completion
set wildmenu

" Set wildmenu mode to 'list:longest,full':
" "list:longest"  When more than one match, list all matches and
"                 complete till longest common string. 
" "full"          Complete the next full match.  After the last match,
"                 the original string is used and then the first match
"                 again.
set wildmode=list:longest,full

" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again. 
set autoread

" Show the line and column number of the cursor position, separated by a
" comma.
set ruler

" Set utf-8 as standard encoding
set encoding=utf-8

" 1 tab = 8 spaces
set shiftwidth=8
set tabstop=8
set expandtab

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=3

" Show line numbers
set number

" Use visual bell
set visualbell

" Turn on automatic indentation
set autoindent

" Turn on smart indentation
set smartindent

" Highlight current line
set cursorline

" Enable line wrapping
set wrap

" Textwidth = 76 characters
set textwidth=76

" Formatting options:
" q: Allow formatting of comments with "gq".
" r: Automatically insert the current comment leader after hitting
"    <Enter> in Insert mode.
" n: When formatting text, recognize numbered lists.
" l: Long lines are not broken in insert mode.
set formatoptions=qrn1

" Location for undo files
set undodir=~/.vim/.undo//

" Location for backup files
set backupdir=~/.vim/.backup//

" Locaton for swap files
set directory=~/.vim/.swp//

" Allow for unwritten changes
set hidden

" Set search to ignore case
set ignorecase

" Override the 'ignorecase' option if the search pattern contains upper
" case characters
set smartcase

" Show search matches while typing 
set incsearch

" When a bracket is inserted, briefly jump to the matching one
set showmatch

" When there is a previous search pattern, highlight all its matches
set hlsearch

" If in Insert, Replace or Visual mode put a message on the last line
set showmode

" Show (partial) command in the last line of the screen
set showcmd

" Set leader
let mapleader=","

" When on, splitting a window will put the new window below the current
" one
set splitbelow

" Built-in terminal (nvim)
map <leader>t :10sp<CR>:terminal<CR>i

" Set backspace behaviour to 'indent,eol,start':
" indent  allow backspacing over autoindent
" eol     allow backspacing over line breaks (join lines)
" start   allow backspacing over the start of insert; CTRL-W and CTRL-U
"         stop once at the start of insert. 
set backspace=indent,eol,start

" Window navigation:
" Shift + Up arrow: window up
" Shift + Down arrow: window down
" Shift + Left arrow: window left
" Shift + Right arrow: window right
map <S-Up> :wincmd k<CR>
map <S-Down> :wincmd j<CR>
map <S-Left> :wincmd h<CR>
map <S-Right> :wincmd l<CR>

" Tab navigation:
" Ctrl+t + ?: open new tab
" Ctrl+t + Up arrow: first tab
" Ctrl+t + Down arrow: last tab
" Ctrl+t + Left arrow: previous tab
" Ctrl+t + Right arrow: next tab
map <C-t>? :tabe<Space>
map <C-t><Up> :tabr<CR>
map <C-t><Down> :tabl<CR>
map <C-t><Left> :tabp<CR>
map <C-t><Right> :tabn<CR>

"""" plug.vim

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" airline
Plug 'git@github.com:vim-airline/vim-airline.git'

" dracula
" Plug 'git@github.com:dracula/vim.git', { 'as': 'dracula' }

" fugitive
Plug 'git@github.com:tpope/vim-fugitive.git'

" fzf
Plug 'git@github.com:junegunn/fzf.git'
Plug 'git@github.com:junegunn/fzf.vim.git'

" bind fzf to ;
map ; :Files<cr>

" iceberg
Plug 'git@github.com:cocopon/iceberg.vim.git'

" NERDTree
Plug 'git@github.com:scrooloose/nerdtree.git'

" signify
Plug 'git@github.com:mhinz/vim-signify.git'

" Initialize plugin system
call plug#end()

"""" colors
colorscheme iceberg
