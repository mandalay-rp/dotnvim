require("config.filetypes")
require("config.keymaps")
require("config.options")
require("plugins.init")
-- New UI opt-in
require("vim._core.ui2").enable({})
-- require("config.lsp")

-- Restore cursor position
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*" },
    callback = function()
        vim.api.nvim_exec('silent! normal! g`"zv', false)
    end,
})

