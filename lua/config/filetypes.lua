-- Detect dockerfile filetype
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
    pattern = { "Dockerfile-*" },
    callback = function()
        vim.api.nvim_exec("set ft=dockerfile", false)
    end,
})
