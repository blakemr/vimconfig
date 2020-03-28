" --- Plugins ---
" Required for vundle init. Reset after vundle#end
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" --- Language support ---
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/syntastic'

" --- Code completion ---
Plugin 'valloric/youcompleteme'

" --- Integrations ---

" --- Interface ---
" Plugin 'vim-airline/vim-airline'

" --- Themes ---
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'morhetz/gruvbox'

call vundle#end()

" Re-enable filetypes
filetype plugin indent on

" --- Plugin Config ---
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_open = 0
let g:synastic_mode_map = {'mode':'passive'}

" Use :sc to perform syntastic check
:command Sc SyntasticCheck

" Set python linter
let g:syntastic_python_checkers = ['flake8']

" --- Config Vim Settings ---
" Behavior
syntax on
set number relativenumber
set splitright
set textwidth=79				" Wrap text at 80 characters
set backspace=indent,eol,start			" Set backspace to work as expected
set clipboard+=unnamed,unnamedplus		" Allow yank/paste/delete to use the system clipboard
set ruler					" Show curser position on status bar
set scrolloff=10				" Set 10 line scroll buffer
set autoread					" Auto-reload files
" Middle click paste
noremap! <s-insert> <middlemouse>

" Auto save
autocmd BufLeave,CursorHold,CursorHoldI,FocusLost * silent! wa

" Appearance
set termguicolors				" Set true color support
set background=dark

set colorcolumn=80 				" Highlight at 80 and 120 characters	

" Config color scheme
let g:gruvbox_italic=1				" Enable italics
let g:gruvbox_contrast_dark='hard'		" Set contrast

" ColorScheme
colorscheme gruvbox

" Wildmenu - Complete to longest, tab through the rest
set wildmenu
set wildmode=longest:full,full

" --- Hotkeys ---
nnoremap <C-H> <C-W><C-H> 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" --- Formatting ---
" Markdown - formatting
au BufRead,BufNewFile *.md setlocal textwidth=79

" Python 
au BufRead,BufNewFile *.py setlocal textwidth=79
au BufWritePre *.py %s/\s\+$//e			" Strip whitespace
