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
"Plug 'davidhalter/jedi-vim' "don't use because its too laggy
"Mappings similiar to jedi-vim
" Procedure to install all necessary utils:
" At first install Node.js (alternatively in mac you can use 'brew install node').)
" curl -sL install-node.now.sh | sh
" :CocInstall coc-tsserver coc-json coc-html coc-css coc-pyright coc-flutter
" For other supported extensions look at: https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions
" :CocCommand 'SOME_COMMAND'
" :CocList - to see all installed extensions
" To find more python extensions/stubs/utils look at: https://github.com/typeddjango/awesome-python-typing#stub-packages
" FlutterDevices:
" :CocList FlutterDevices
" FlutterEmulators:
" :CocList FlutterEmulators
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" to move selection/line character with <C-k> (hjkl) buttons
Plug 'matze/vim-move'
" to navigate in file '\\w' (wW{}[]TtFt) keys
Plug 'easymotion/vim-easymotion'
" To show file/class structure by F8
Plug 'majutsushi/tagbar'
" Similiar to tagbar but better
"Plug 'liuchengxu/vista.vim'
" Just comfortable bottom status line
Plug 'vim-airline/vim-airline'
" File search/open
" Plugin 'mileszs/ack.vim'
" Commenter '\cc' - comment '\cu' - uncomment '\cs' - sexy comment '\ci' -
" invert comment state '\cy' - yank&comment '\c<space>' - toggle comment
" (if first line commented then whole block will uncomment and otherwise)
Plug 'scrooloose/nerdcommenter'
" Fuzzy search in buffer/files/tags
" Disable 'cause fzf is better
"Plug 'ctrlpvim/ctrlp.vim'
" Search text in files in current folder recursively ':Ag' 
" default value './install --all' make FZF available in system
" and './install --bin' make it available in vim only
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug '~/.fzf'
"Changes the working directory to the project root when you open a file or directory
"Plug 'airblade/vim-rooter'
"deoplete code completion
"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1
" \ff and insert search pattern. s,v and t to open file under the sursor
" in split, vertical split or tab accordingly. S,V and T to do the same
" but silently. R to reload current results.
" To switch between case-sensitive/insensitive, whole-word-match and 
" regex/literal pattern in command line use Ctrl-o Ctrl-r, Ctrl-o Ctrl-s 
" or Ctrl-o Ctrl-w (mnemonics is set Option: Regex, case Sesnsitive, 
" Word regex).
"Plugin 'eugen0329/vim-esearch'
" Syntax highlight NOT better than vim's default
"Plug 'sheerun/vim-polyglot'
"Syntax highlight - color each variable to different color
Plug 'jaxbot/semantic-highlight.vim'
Plug 'vim-jp/vim-java'

"colorschemes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'doums/darcula'
" Initialize plugin system
call plug#end()

syntax on
"let g:mapleader=','
"colorscheme dracula 
"colorscheme gruvbox
"let g:gruvbox_contrast_dark="medium"
colorscheme darcula 

"in case if terminal support Truecolor
set termguicolors

"FZF files search map
nnoremap <C-p><C-w> :call fzf#vim#files('.', {'options':'--query '.expand('<cword>')})<CR>

"Semantic-highlight toogle
:nnoremap <Leader>s :SemanticHighlightToggle<cr>

"let java_highlight_functions = 1
"let java_highlight_all = 1
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc

"Methods call syntax highlight
"autocmd! FileType c,cpp,java,php call CSyntaxAfter()

"tabs shortcuts, use ":tn<Space>" == tabnew
ca tn tabnew
ca th tabp
ca tl tabn

"vim-move config to rule <C-k> hjkl
let g:move_key_modifier = 'C'
"set background=light
set background=dark
"show line numbers on left border
set number
"replace tabs with spaces
set expandtab
"tabulation simbols length
set tabstop=4
"HighLight search results
set hlsearch
"IncSearch - set incremental search
"set is
"map leader key as \
let mapleader="\\"
filetype plugin on

let g:pymode_python = 'python3'

"mappings

" system clipboard
"%$(@%&#*^@!! VIM cannot distinguish <C-S-v> and <C-v> WHY DID YOU DO THAT!?
"vnoremap <C-S-c> "+y
""nnoremap <C-S-v> "+p
"cnoremap <C-S-v> <C-r>+ 
"inoremap <C-S-v> <C-r>+ 
"" use <c-r> to insert original character without triggering things like auto-pairs
"inoremap <c-r> <c-v>

map <C-n> :NERDTreeToggle<CR>
""move/swap line up
"noremap <c-K> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
"noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
""move/swap line down
"noremap <c-J> ddp
"noremap <c-s-down> ddp

nmap <F8> :TagbarToggle<CR>

" coc-nvim configuration
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=200

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" neovide configuration
" 60fps is the most widely used
let g:neovide_refresh_rate=60
" we don't like transparency, are we?
let g:neovide_transparency=1.0
" game like full screen
let g:neovide_fullscreen=v:false
" antialiasing, need to disable if there appear cursor visual issues
let g:neovide_cursor_antialiasing=v:true

