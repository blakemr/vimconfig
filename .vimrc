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
Plugin 'vim-airline/vim-airline'

" --- Themes ---
Plugin 'dracula/vim', { 'name': 'dracula' }

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
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" --- Config Vim Settings ---
syntax on
set number relativenumber
set splitright

" Colorsceme config
colorscheme dracula

" This is done because the terminal isn't playing nice with the colorscheme
highlight Normal ctermfg=NONE ctermbg=NONE

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
