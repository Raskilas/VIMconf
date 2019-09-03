" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'udalov/kotlin-vim'
"git wrapper
"Plug 'tpope/vim-fugitive'
"Syntax checking hacks for vim
"Plug 'scrooloose/syntastic'
"code-completion engine
"Plug 'valloric/youcompleteme'
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Python autocompletion, go to definition.
" Completion <C-Space>
" Goto assignments <leader>g (typical goto function)
" Goto definitions <leader>d (follow identifier as far as possible, includes imports and statements)
" Show Documentation/Pydoc K (shows a popup with assignments)
" Renaming <leader>r
" Usages <leader>n (shows all the usages of a name)
" Open module, e.g. :Pyimport os (opens the os module)
Plug 'davidhalter/jedi-vim'
" to move selection/line character with <C-k> (hjkl) buttons
Plug 'matze/vim-move'
" to navigate in file '\\w' (wW{}[]TtFt) keys
Plug 'easymotion/vim-easymotion'
" To show file/class structure by F8
Plug 'majutsushi/tagbar'
" Just comfortable bottom status line
Plug 'vim-airline/vim-airline'
" File search/open
" Plugin 'mileszs/ack.vim'
" Commenter '\cc' - comment '\cu' - uncomment '\cs' - sexy comment '\ci' -
" invert comment state '\cy' - yank&comment '\c<space>' - toggle comment
" (if first line commented then whole block will uncomment and otherwise)
Plug 'scrooloose/nerdcommenter'
" Fuzzy search in buffer/files/tags
"
Plug 'ctrlpvim/ctrlp.vim'
" Search everywhere ':Ag' 
" default value './install --all' make FZF available in system
" and './install --bin' make it available in vim only
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug '~/.fzf'


"colorschemes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
" Initialize plugin system
call plug#end()

syntax on
"let g:mapleader=','
"colorscheme dracula 
colorscheme gruvbox
let g:gruvbox_contrast_dark="medium"
"vim-move config to rule <C-k> hjkl
let g:move_key_modifier = 'C'
"set background=light
set background=dark
set number
set expandtab
set tabstop=4
set hlsearch
let mapleader="\\"
filetype plugin on

let g:pymode_python = 'python3'

"mappings

map <C-n> :NERDTreeToggle<CR>
""move/swap line up
"noremap <c-K> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
"noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
""move/swap line down
"noremap <c-J> ddp
"noremap <c-s-down> ddp

nmap <F8> :TagbarToggle<CR>

