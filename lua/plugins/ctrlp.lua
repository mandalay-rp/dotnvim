vim.pack.add({ "https://github.com/ctrlpvim/ctrlp.vim" })

-- По умолчанию, CtrlP ищет файлы по их полному пути, что мне показалось странным, поскольку на запрос "repo", имея следующую структуру файлов:
-- project/src/Repository/Repository.php
-- project/src/Repository/Foo.php
-- CtrlP может придать больший вес файлу Foo.php. К счастью, CtrlP, как и многие другие плагины для vim'a, имеет гибкую настройку. Для решения проблемы нужно прописать
--
vim.g.ctrlp_by_filename = 1
-- откуда начинать поиск. w - ближайшая директория, которая содержит признаки наличия CVS (.git, .svn). r - текущая директория (pwd).
vim.g.ctrlp_working_path_mode = "wr"
vim.g.ctrlp_map = "<c-p>" -- открываем нажатием Ctrl+P
vim.g.ctrlp_cmd = "CtrlPBuffer" -- показывать список буферов по-умолчанию
