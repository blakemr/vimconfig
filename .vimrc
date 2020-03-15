" --- Plugins ---
" Required for vundle init. Reset after vundle#end
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/dotfiles/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" --- Language support ---

" --- Code completion ---

" --- Integrations ---

" --- Interface ---
Plugin 'vim-airline/vim-airline'

" --- Themes ---
Plugin 'dracula/vim', { 'name': 'dracula' }

call vundle#end()

" Re-enable filetypes
filetype plugin indent on

" --- Config Vim Settings ---
syntax on
set number relativenumber
colorscheme dracula

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
