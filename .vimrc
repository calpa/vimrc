let g:ale_emit_conflict_warnings = 0 "Fix conflict

" Vundle start
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime<Plug>PeepOpenath to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on "required

" Vim-Plug Start
call plug#begin('~/.vim/plugged')

" Install deoplete.nvim
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'wakatime/vim-wakatime'
Plug 'posva/vim-vue'
" Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-fugitive'

Plug 'liuchengxu/space-vim-dark'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'Galooshi/vim-import-js', { 'do': 'npm install -g import-js' }
Plug 'billyvg/deoplete-import-js'
let g:deoplete_import_js#bin = 'importjs'

Plug 'pangloss/vim-javascript'
let g:javascript_enable_domhtmlcss = 1

Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1

Plug 'mxw/vim-jsx' "react js, jsx hightlight

Plug 'airblade/vim-gitgutter' "Show git diff in the gutter
set updatetime=100

" Use tern to autocomplete
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

let g:deoplete#enable_at_startup = 1

call plug#end()
" Vim-Plug End

colorscheme space-vim-dark " Change theme to space-vim-dark

" Fix bug
let g:NERDTreeDirArrows = 1

try
set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

source ~/.vim_runtime/my_configs.vim
catch
endtry

" Open NERDTree when vim is opened
try
autocmd vimenter * NERDTree
catch
endtry

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

:set nu rnu

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END

"Smart way to move between windows (<ctrl>j etc.):
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

let mapleader = "\,"
:nnoremap <leader>d dd
map q: :q
map <leader>n :NERDTreeToggle<CR>

map <leader>g :GitGutterEnable<CR>

"ale settings
"ale styles
let g:ale_sign_column_always = 1
let g:ale_sign_error = 'E>'
let g:ale_sign_warning = 'W>'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_open_list = 1
let g:ale_keep_list_window_open = 1
"javascript linter: eslint
let g:ale_fixers = {
            \ 'javascript': ['eslint'],
            \ 'vue': ['eslint']
            \}

let g:ale_fix_on_save = 1 "Fix files on save

"Auto lint
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_linter_aliases = {'vue': 'css'}

" vim-airline settings
" fix fonts
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter' " Show the whole path
let g:airline_theme = 'tomorrow' " Set default theme as tomorrow

" Tmuxline
"let g:tmuxline_powerline_separators = 0
"let g:tmuxline_separators = {
"    \ 'left' : '',
"    \ 'left_alt': '>',
"    \ 'right' : '',
"    \ 'right_alt' : '<',
"    \ 'space' : ' '}
"
"" custom preset
"let g:tmuxline_preset = {
"    \'a'    : 'Session: #S',
"    \'b'    : 'Current window: #W',
"    \'c'    : '#H',
"    \'win'  : '#I #W',
"    \'cwin' : '#I #W',
"    \'x'    : '#W %R',
"    \'y'    : '#(date +"%Y-%m-%d %H:%M")',
"    \'z'    : '記得十二點前睡覺'}

