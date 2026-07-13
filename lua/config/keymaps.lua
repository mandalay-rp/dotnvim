local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map("n", " ", ":nohl<CR>", default_opts)

map("n","<F8>" , ":Autoformat<CR>", default_opts)

-- Новая вкладка
map("n","<leader>t" , ":tabnew<CR>:Startify<CR>", default_opts)
-- Закрыть вкладку
map("n","<C-x>" , ":tabclose<CR>", default_opts)
