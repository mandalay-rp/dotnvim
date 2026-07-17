-- vim.lsp.enable({"lua_ls", "ruff"})
vim.lsp.enable({"lua_ls", "pyright"})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method("textDocument/completion") then
            -- vim.opt.completeopt = { "menu", "menuone", "noinsert", "fuzzy", "poppup" }
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
            vim.keymap.set('i', '<C-Space>', function()
                vim.lsp.completion.get()
            end)
        end
    end,
})

-- Diagnostics
vim.diagnostic.config({
    virtual_text = true,
        signs = false,
        underline = false,
        update_in_insert = false,
        severity_sort = true,
}) -- inline diagnostics


-- vim.diagnostic.config({    
--         virtual_text = true,
--         signs = false,
--         underline = false,
--         update_in_insert = false,
--         severity_sort = true,
-- })
