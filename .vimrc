let g:ale_emit_conflict_warnings = 0 "Fix conflict

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
Plugin 'vim-airline/vim-airline'
Plugin 'w0rp/ale'
Plugin 'wakatime/vim-wakatime'

call vundle#end() "required
filetype plugin indent on "required

" Vundle end
call plug#begin('~/.vim/plugged')

" Install deoplete.nvim
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Use tern to autocomplete
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

" Prevent git commit crash
if &filetype != 'gitcommit'
    "let g:deoplete#enable_at_startup = 1
endif

call plug#end()
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

" autocmd vimenter * NERDTree

"Smart way to move between windows (<ctrl>j etc.):
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

let mapleader = "\<Space>"
:nnoremap <leader>d dd
map q: :q
map <leader>n :NERDTreeToggle<CR>

"ale settings
"ale styles
let g:ale_sign_error = 'E>'
let g:ale_sign_warning = 'W>'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"change from loclist to quickfix list
"let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 1

let g:ale_open_list = 1

"javascript linter: eslint
let g:ale_fixers = {
            \ 'javascript': ['eslint'],
            \}

let g:ale_fix_on_save = 1 "Fix files on save
