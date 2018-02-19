" Vundle start
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime<Plug>PeepOpenath to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'pathogen.vim'
Plugin 'The-NERD-tree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end() "required
filetype plugin indent on "required

" Vundle end
" Fix bug
let g:NERDTreeDirArrows = 1

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

execute pathogen#infect()

autocmd vimenter * NERDTree

"Smart way to move between windows (<ctrl>j etc.):
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

let mapleader = "\<Space>"
:nnoremap <leader>d dd
map q: :q
map <leader>n :NERDTreeToggle<CR>

