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

" Set numbered lines
set number

" Make tabbing nicer
set wildmenu

" Set colorscheme
set background=dark
colorscheme badwolf

" " Systastic - config
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
 
" Markdown - formatting
au BufRead,BufNewFile *.md setlocal textwidth=79
