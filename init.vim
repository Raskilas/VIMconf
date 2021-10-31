set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc
 
"Enables mouse in all modes, not really necessary
"in terminal, but work good with UI client
set mouse=a
"WOWOW! JetBrains font, actually not very good (at least without linespace 1.2)
"set guifont=JetBrains\ Mono\ Regular:h14
"set guifont=DejaVu\ Sans\ Mono:h16
"set linespace=1.2

"%$(@%&#*^@!! VIM cannot distinguish <C-S-v> and <C-v> WHY DID YOU DO THAT!?
"vnoremap <C-S-c> "+y
"nnoremap <C-S-v> "+p
"cnoremap <C-S-v> <C-r>+ 
"inoremap <C-S-v> <C-r>+ 
"" use <c-r> to insert original character without triggering things like auto-pairs
"inoremap <c-r> <c-v>
" Linux copy-paste of text selected by mouse
vnoremap <A-c> "+y
nnoremap <A-v> "+p
cnoremap <A-v> <C-r>+ 
inoremap <A-v> <C-r>+ 
" OSX copy-paste. 'Use Option as Meta Key' must be turned OFF in Terminal->Preferences->Keyboard
vnoremap ç "*y
nnoremap √ "*p
cnoremap √ <C-r>+ 
inoremap √ <C-r>+ 

