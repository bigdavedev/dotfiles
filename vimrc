" Setup Powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set number
set nowrap
set smartindent
set autoindent

set backspace=eol,start,indent

set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
call vundle#end()

filetype plugin indent on

" Configure YCM
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Configure NERDTree
autocmd vimenter * NERDTree
nnoremap <C-k><C-b> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Configure make
set makeprg=make\ -C\ build
nnoremap <F4> :make!<CR>
