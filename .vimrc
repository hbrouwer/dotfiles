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

" When on, splitting a window will put the new window below the current
" one
set splitbelow

" Enable clipboard integration
set clipboard=unnamedplus

" Bind built-in terminal (nvim) to ',t' (Ctrl+\ Ctrl+n to quit)
let mapleader=","
map <leader>t :10sp<CR>:terminal<CR>i

" Set backspace behaviour to 'indent,eol,start':
" indent  allow backspacing over autoindent
" eol     allow backspacing over line breaks (join lines)
" start   allow backspacing over the start of insert; CTRL-W and CTRL-U
"         stop once at the start of insert. 
set backspace=indent,eol,start

" Buffer navigation:
" Ctrl+w + Up arrow: first buffer
" Ctrl+w + Down arrow: last buffer
" Ctrl+w + Left arrow: previous buffer
" Ctrl+w + Right arrow: next buffer
map <C-w><Up> :br<CR>
map <C-w><Down> :bl<CR>
map <C-w><Left> :bp<CR>
map <C-w><Right> :bn<CR>

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
" Ctrl+s + ?: open new tab
" Ctrl+s + Up arrow: first tab
" Ctrl+s + Down arrow: last tab
" Ctrl+s + Left arrow: previous tab
" Ctrl+s + Right arrow: next tab
map <C-s>? :tabe<Space>
map <C-s><Up> :tabr<CR>
map <C-s><Down> :tabl<CR>
map <C-s><Left> :tabp<CR>
map <C-s><Right> :tabn<CR>

"""" plug.vim

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Nord
"Plug 'https://github.com/arcticicestudio/nord-vim.git'

" airline
"Plug 'https://github.com/vim-airline/vim-airline.git'
"Plug 'https://github.com/vim-airline/vim-airline-themes.git'

" catppuccin
Plug 'https://github.com/catppuccin/vim.git', { 'as': 'catppuccin' }

" lightline
Plug 'https://github.com/itchyny/lightline.vim.git'

" fugitive
Plug 'https://github.com/tpope/vim-fugitive.git'

" fzf
Plug 'https://github.com/junegunn/fzf.git'
Plug 'https://github.com/junegunn/fzf.vim.git'

" fzf keybindings: 
" ',b': search buffers
" ',c': search commands
" ',f': search files
" ',m': search key mappings
" ',s': search filetypes
" ',w': search windows
let mapleader=","
map ,b :Buffers<CR>
map ,c :Commands<CR>
map ,f :Files<CR>
map ,m :Maps<CR>
map ,s :Filetypes<CR>
map ,w :Windows<CR>

" markdown
Plug 'https://github.com/godlygeek/tabular.git'
Plug 'https://github.com/preservim/vim-markdown.git'

" NERDTree
Plug 'https://github.com/scrooloose/nerdtree.git'

" NERD Commenter
Plug 'https://github.com/scrooloose/nerdcommenter.git'

" signify
Plug 'https://github.com/mhinz/vim-signify.git'

" Initialize plugin system
call plug#end()

"""" colors
"let g:airline_theme='nord'
"colorscheme nord
"silent! colorscheme nord

let g:lightline = {'colorscheme': 'catppuccin_mocha'}
"colorscheme catppuccin_mocha
silent! colorscheme catppuccin_mocha

" Enable 24-bit RGB colors
set termguicolors
