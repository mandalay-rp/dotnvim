require("config.filetypes")
require("config.keymaps")
require("config.options")
require("plugins.colorscheme")
require("plugins.nvim-tree")
require("plugins.lualine")
require("plugins.startify")
require("plugins.auto-pairs")
require("plugins.vim-repeat")
require("plugins.vim-surround")
require("plugins.vim-fugitive")
require("plugins.tree-sitter-manager")
require("plugins.vim-autoformat")
require("plugins.supertab")
require("plugins.mason")
require("plugins.conform")
require("plugins.ctrlp")
require("plugins.telescope")
require("config.lsp")

-- Restore cursor position
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*" },
    callback = function()
        vim.api.nvim_exec('silent! normal! g`"zv', false)
    end,
})
