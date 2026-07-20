vim.pack.add({
    src = "https://github.com/neovim/nvim-lspconfig", name = "lspconfig"
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            -- Tell the server to let Neovim dandle snippet expansion
            completion = {
                callSnippet = "Replace",
            },
            -- Use LuaJIT (which Neovim uses)
            runtime = {
                version = "LuaJIT"
            },
        }
    }
})

vim.lsp.enable({
    "lua_ls",
    "pylsp"
})

vim.o.pumborder = "rounded"
