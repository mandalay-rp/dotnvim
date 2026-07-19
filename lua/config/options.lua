vim.g.mapleader = ","

vim.o.mouse = "" -- disable mouse
vim.o.nu = true -- line number
-- vim.o.relativenumber = true -- relative line number
vim.o.cursorline = true -- hightlight current line
vim.o.wrap = false -- do not wrap lines by default
vim.o.scrolloff = 10 -- keep 10 lines above/bellow cursor
vim.o.sidescrolloff = 10 -- keep 10 lines to left/right cursor

vim.o.tabstop = 4 -- tabwidth
vim.o.shiftwidth = 4 -- indent width
vim.o.softtabstop = 4 -- soft tab stop not tabs on tab/backspace
vim.o.expandtab = true -- use spaces instead of tabs
vim.o.smartindent = true -- smart auto-ident
vim.o.autoindent = true -- copy indent from current line

vim.o.ignorecase = true -- case insensitive search
vim.o.smartcase = true -- case sensitive if uppercase line
vim.o.hlsearch = true -- highlight search matches
vim.o.incsearch = true -- show matches as you type

vim.o.signcolumn = "yes" -- always show a sign column
vim.o.colorcolumn = "100" -- show a column at 100 postition chars
vim.o.showmatch = true -- highlights matching brackets
vim.o.cmdheight = 1 -- single line command line
vim.o.showmode = false -- do not show the mode, instead have it in statusline
vim.o.pumheight = 10 -- popup menu height
vim.o.pumblend = 10 -- popup menu transparency
vim.o.winblend = 0 -- floating window transparence
vim.o.conceallevel = 0 -- do not hide markup
vim.o.concealcursor = "" -- do not hide cursorline in markup
vim.o.lazyredraw = true -- do not redraw during macros
vim.o.synmaxcol = 300 -- syntax hightlighting limit
-- vim.o.fillchars = { eob = " " } -- hide "~" on empty lines

local undodir = vim.fn.expand("~/.config/nvim/undodir")
if
	vim.fn.isdirectory(undodir) == 0 -- create undodir if nonexistent
then
	vim.fn.mkdir(undodir, "p")
end

vim.o.backup = false -- do not create a backup file
vim.o.writebackup = false -- do not write to a backup file
vim.o.swapfile = false -- do not create a swapfile
vim.o.undofile = true -- do create an undo file
vim.o.undodir = undodir -- do create an undo file
vim.o.timeoutlen = 500 -- timeout duration
vim.o.autoread = true -- auto-reload changes if outside of neovim
vim.o.autowrite = false -- do not auto-save

vim.o.hidden = true -- allow hidden buffers
vim.o.errorbells = false -- no error sounds
vim.o.backspace = "indent,eol,start" -- better backspace behaviour
vim.o.autochdir = false -- do not autochage directories
vim.o.iskeyword = "@,48-57,_,192-255,-" -- include - in words
-- vim.o.path:append("**") -- include subdir in search
vim.o.selection = "inclusive" -- include last char in selection
vim.o.clipboard = "unnamedplus" -- use system clipboard
vim.o.modifiable = true -- allow buffer modifications
vim.o.encoding = "UTF-8" -- set encoding

-- Folding: requires treesitter available at runtime; safe fallback if not
vim.o.foldmethod = "expr" -- use expression for folding
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- user treesitter for folding
vim.o.foldlevel = 99 -- start with all folds open

vim.o.splitbelow = true -- horizontal splits go below
vim.o.splitright = true -- vertical splits go right

-- vim.o.diffopt:append("linematch:60") -- impruve diff display
vim.o.redrawtime = 10000 -- increase neovim redraw tolerance
vim.o.maxmempattern = 20000 -- increase neovim redraw tolerance

-- Completetion
vim.o.completeopt = "menuone,noinsert,noselect" -- completion options
vim.o.wildmenu = true -- tab completetion
vim.o.wildmode = "longest:full,full" -- complete longest common match, full completion list, cycle through with Tab
vim.o.complete = "w,b,u,t"
vim.o.updatetime = 300 -- faster completion
-- vim.o.autocomplete = true
