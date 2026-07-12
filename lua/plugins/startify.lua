vim.pack.add({
	"https://github.com/mhinz/vim-startify"
})

-- Startify
vim.keymap.set("n", "<leader>s", ":Startify<CR>", {silent = true, noremap = true})

local sessdir = vim.fn.expand("~/.config/nvim/session")
if 
    vim.fn.isdirectory(sessdir) == 0 -- create undodir if nonexistent
then
    vim.fn.mkdir(sessdir, "p")
end
vim.g.startify_session_dir = sessdir

vim.g.startify_bookmarks = {'~/Makefile', '~/.bashrc', '~/.vimrc', '~/.vim/plugins.vim', '~/scripts/'}
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_custom_header = {}
vim.g.startify_list_order = {
             {'   Recent Files'},
             'files',
             {'   Sessions'},
             'sessions',
             {'   Bookmarks'},
             'bookmarks',
             }
vim.g.startify_files_number           = 100
vim.g.startify_enable_special         = 0
vim.g.startify_relative_path          = 1
vim.g.startify_change_to_dir          = 1
vim.g.startify_session_autoload       = 1
vim.g.startify_session_persistence    = 1
vim.g.startify_session_delete_buffers = 1
