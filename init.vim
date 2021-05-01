set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc
 
"Enables mouse in all modes, not really necessary
"in terminal, but work good with UI client
set mouse=a
"WOWOW! JetBrains font, actually not very good (at least without linespace 1.2)
"set guifont=JetBrains\ Mono\ Regular:h14
set guifont=DejaVu\ Sans\ Mono:h16
"set linespace=1.2
