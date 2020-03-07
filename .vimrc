" --- Plugins ---
" Required for vundle init. Reset after vundle#end
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Language support
" Plugin 'scrooloose/syntastic'
" Plugin 'ctrlpvim/ctrlp.vim'

" Code completion
" Plugin 'valloric/youcompleteme'

" Integrations
" Plugin 'scrooloose/nerdtree'

" Interface
Plugin 'vim-airline/vim-airline'
" Plugin 'scrooloose/nerdcommenter'

" Color Schemes
Plugin 'sjl/badwolf' 

call vundle#end()

" Re-enable filetypes
filetype plugin indent on

" " Systastic - config
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" --- Config Vim Settings ---
" Set numbered lines
set number

" Make tabbing nicer
set wildmenu

" Set colorscheme
set background=dark
colorscheme badwolf

" --- Hotkeys ---

nnoremap <C-H> <C-W><C-H> 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" --- Formatting ---
" Markdown - formatting
au BufRead,BufNewFile *.md setlocal textwidth=79
