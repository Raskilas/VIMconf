# VIMconf

My config file with some plugins.

### Useful commands:

- in Insert mode **\<Ctrl>-O\<command>** - executes command in Insert mode. Could be useful in some cases: **\<Ctrl>-Odd** - remove all line, **\<Ctrl>-Ow** - move one word further and etc..
- **H**, **M**, **L** - move cursor to **H**igh/Top, **M**iddle and **L**ow/Bottom of the screen respectively. 
- **\<Ctrl>-b**, **\<Ctrl>-f** - **PgUp** and **PgDn** respectively.
- **\<Ctrl>-e**, **\<Ctrl>-y** - move screen down and up by one line respectively. One line scroll.
- **_** - jump to the first non-whitespace character in the line.
- **%** - move to matching character: (), {}, [].
- **e**, **E** - the same as **w**, **W** but moves cursor to the end of word.
- **\<Ctrl>-r** - redo.
- **\<Ctrl>-s**, **\<Ctrl>-q** - **S**top and **Q/C**ontinue terminal. [Flow control](https://unix.stackexchange.com/a/12146)
- **"0p** - paste the last **y**anked word. **"** - get data from register, **0** - register always store the last yanked word, **p** - paste after cursor.
- **"+p** - paste from Linux's system buffer. The same as **Ctrl-Shift-V** in bash.
- **"\*p** - paste from Windows's system buffer. Or paste from Linux's mouse *right-click>copy* buffer.
- **q\<a-z>\<commands>q** - record macros in register **<a-z>**. Registers **<0-9>**, **-** and **=** may and will be overwritten due text editing(xXcCdDyYsS commands), so don't use them for macros.
- **@\<a-z>**, **\<n>@\<a-z>**, **@@** - execute macros in register **\<a-z>**, execute **\<n>** times macros in register **\<a-z>**, repeat last executed macros.



- **\<Ctrl>-[** - open Normal mode. The same as **Esc** button.
- **ZZ** - save document and quit Vim. But as for me **:wq** is more comfortable.
- **zz**, **zt**, **zb** - text scroll. Move line with cursor to **z/C**enter, to **T**op and **B**ottom of screen respectively.
- **\<Ctrl>-u**, **\<Ctrl>-d** - move screen on half of page **U**p and **D**own.
- **ciw** - remove whole current word no matter on which character cursor point and enable Insert mode. **C**hange **I**nside **W**ord.
- **C** - remove text in the line from cursor to the end of the line and enable Insert mode.
- **dt\<char>** — remove text from cursor to first appearance of character. **D**elete **T**o **\<character>**.
- **~** - switch case (upper to bottom and otherwise). Work in Visual mode too.
- **gU**, **gu** - switch **U**pper and **u/b**ottom case respectively.
- **.** - repeat the last Vim command.
- **ggVG=** - autoformat text in whole file. **gg** - go to the top of file, **V** - Visual Line mode, **G** - go to the bottom of file, **=** - autoformat.
- **/<search_template>**, **?\<search_template>** - forward and backward search.
- **/foo\<Enter>cgnbar\<Esc>** then **n.** - quick search of **foo** and replace with **bar**. **n** - **n**ext search appearance, **.** - insert previously typed **bar**.
- **\*cwbar\<Esc>** then **n.** - quick search variation of previous commands, but in this case we assume that cursor is already point to the start of word to be replaced.
- **:%s/\<foo\>/bar/gcI** - case sensitive find **foo** and replace with **bar** with confirmation. **%** - in all lines, **\\<** and **\\>** - only whole word exactly matching **foo**, **bar** - replace with that word, **g** - **g**lobal for line (all appearance, not only first), **c** - **C**onfirmation, ask for confirmation on every appearance (y/n/a/q/l/^E/^Y - **y**es/**n**o/**a**ll/**q**uit/change **l**ast one and quit/scroll screen up/scroll screen down), **I** - case sensitive - opposite to **i** - case **i**nsensitive. **%** can be replaced with range of line numbers **:5,12s/foo/bar/g** (from 5 to 12 inclusive), with marks **:'a,'bs/foo/bar/g** (from **a**-mark to **b**-mark), with offset **:.,+2s/foo/bar/g** (from **.** - current line to **+2** lines below) or **:.,$s/foo/bar/g** (from current line to the **$** - end of file).
- **:noh** - **no h**ighlight/disable search results.
- **<<**, **>>** - tab left, right whole line. **3>>** - tab right 3 lines under cursor.

### Jump to character occurence (Doesn't really need as exist [easymotion](https://github.com/easymotion/vim-easymotion))
- **f\<char>** - jump to next occurrence of character **\<char>**.
- **t\<char>** - jump to before next occurrence of character **\<char>**.
- **F\<char>** - jump to previous occurence of character **\<char>**.
- **T\<char>** - jump to after previous occurence of character **\<char>**.
- **;**- repeat previous **f**, **t**, **F** or **T** movement.
- **,**- repeat previous **f**, **t**, **F** or **T** movement, backwards.


### Plugin commands:
- **\<Leader>\<Leader><navigation_key>** - [easymotion/vim-easymotion](https://github.com/easymotion/vim-easymotion), **<navigation_key>** is one of **jkwWbBeE**. Like **\\\j** - will highlight lines below cursor with hotkey to move down quicker, much better than **23j**.
- **:Ag** - [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim), search in all files of current folder and subfolders. Open file with cursor on choosed line.
- **\<Ctrl>-n** - [scrooloose/nerdtree](https://github.com/preservim/nerdtree), opens current folder tree on left side of the screen. **t** - Open the selected file in a new tab, **i** - open the selected file in a horizontal split window, **s** - open the selected file in a vertical split window, **I** - toggle hidden files, **m** - show the NERD Tree menu ((**a**)dd/(**m**)ove/(**d**)elete/(**c**)opy node), **R** - refresh the tree, useful if files change outside of Vim, **?** - toggle NERD Tree's quick help.
- **\<Leader>cc**,  **\<Leader>cu**,  **\<Leader>cs**,  **\<Leader>ci**,  **\<Leader>cy**,  **\<Leader>c\<Space>**  - [scrooloose/nerdcommenter](https://github.com/preservim/nerdcommenter), comment, uncomment, sexy comment (comments out the selected lines with a pretty block formatted layout), invert comment state, yank&comment and toggle comment respectively.
- **\<F8>** - [majutsushi/tagbar](https://github.com/preservim/tagbar), opens right panel with file/class structure. (Need to check is [vista.vim](https://github.com/liuchengxu/vista.vim) is ready to replace it)


Разбивка окна на несколько подокон и навигация между ними:
Ctrl+w v — ( :vsplit ) разделить окно по вертикали
Ctrl+w s — ( :split ) разделить окно по горизонтали
Ctrl+w f — разделить окно и в новом открыть файл, имя и путь к которому находится под курсором
Ctrl+w q или c — закрыть текущее окно
Ctrl+w n — создать новое окно ( :new filename )

Сtrl+w o — развернуть текущее окно на весь экран, закрыв прочие подокна.
Сtrl+w _ — (нижнее подчеркивание) развернуть окно до максимального размера
Сtrl+w = — Сделать все окна текущего таба одинакового размера
Ctrl+w+ или Ctrl+w- — увеличение или уменьшение размера текущего окна
Esc 5 Ctrl+w+ или Сtrl+w 5+ — Увеличить размер текущего окна сразу на 5 строк/столбцов.Esc 5 Ctrl+w - или Сtrl+w 5- — Уменьшить размер текущего окна сразу на 5 строк/столбцов.

Ctrl+wCtrl+w — переход к следующему подокну
Ctrl+w HJKL — переместить окно влево/вправо/вверх/вниз, плюс перегруппировка компановки окон Ctrl+w hjkl либо курсор — переместить курсор на окно влево/вправо/вверх/вниз

Параметры запуска  vim:
vim -o filename1 filename2 — запустить vim с двумя файлами, открытыми в горизонтальных окнах
vim -O filename1 filename2 — запустить vim с двумя файлами, открытыми в вертикальных окнах
vim -d filename1 filename2 — запустить vim с двумя файлами и сравнить их, подсветив отличия.

:set mouse=a — Если включить, то будет можно мышью выбирать вкладки, окна, и изменять их размер
Ctrl+o — вернуться туда, откуда начали поиск
:w file.txt — сохранить в файл file.txt
:w! file.txt — сохранить и перезаписать file.txt, если существует.
:e — Переоткрыть текущий файл.
:e file.txt — открыть файл file.txt.
:ene — Создать новый файл.
:ene file.txt — Создать файл file.txt.

set is — Incsearch, инкрементный поиск — отображение частичных совпадений при поиске
set tabstop=4 # Длина табуляции
set expandtab # Замена табуляции пробелами

:%s#>[^<]\+>##g — Очистить текст от HTML-тегов
:%s/^\(.*\)\n\1$/\1/ — Удалить строки, повторяющиеся дважды
:%s/\s\+$//  — Удалить пробелы в конце строк, и строки из одних пробелов (link)
:1,$ g/^$/ d  — Удалить пустые строки
:g/^$/d   — Удалить пустые строки


Простое решение проблемы командного режима в русской раскладке, положить в файл ~/.vimrc с содержимым в одну строку:
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;
ABCDEFGHIJKLMNOPQRSTUVWXYZ:, фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
Однако я заметил единственный минус — в правом нижнем углу перестают отображаться вводимые символы в режиме команд.
А как это «сказать vim`у»? Если прописывать в конфиге, как я писал в статье, то почему-то теряется отображение вводимых после двоеточия: команд.
Вот это написать в vimrc

set keymap=russian-jcukenwin

Теперь, когда язык ОС — английский, можно в Insert Mode нажать Control+^ и язык ввода станет русским. Ещё раз — Control+^ и язык ввода английский. На язык ввода в ОС это не влияет.






### Special registers
- **0** - last yank.
- **"** - unnamed register, last delete or yank.
- **%** - current file name.
- **#** - alternate file name.
- **\*** - clipboard contents (X11 primary).
- **+** - clipboard contents (X11 clipboard).
- **/** - last search pattern.
- **:** - last command-line.
- **.** - last inserted text.
- **-** - last small (less than a line) delete.
- **=** - expression register.
- **\_** - black hole register.
