vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
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
				version = "LuaJIT",
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
		},
	},
})


vim.lsp.config("pyright", {
	settings = {
		capabilities = (function()
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }
			return capabilities
		end)(),
		settings = {
			python = {
				analysis = {
					useLibraryCodeForTypes = true,
					diagnosticSeverityOverrides = {
						reportUnusedVariable = "warning",
					},
					-- typeCheckingMode = "off", -- Set type-checking mode to off
					-- diagnosticMode = "off", -- Disable diagnostics entirely
				},
			},
		},
	},
})

-- local on_attach_ruff = function(client, _)
-- 	if client.name == "ruff" then
-- 		-- disable hover in favor of pyright
-- 		client.server_capabilities.hoverProvider = false
-- 	end
-- end
--
-- vim.lsp.config("ruff", {
-- 	on_attach = on_attach_ruff,
-- 	init_options = {
-- 		settings = {
-- 			args = {
-- 				"--ignore",
-- 				"F821",
-- 				"--ignore",
-- 				"E402",
-- 				"--ignore",
-- 				"E722",
-- 				"--ignore",
-- 				"E712",
-- 			},
-- 		},
-- 	},
-- })

vim.lsp.enable({
	"lua_ls",
	"pyright",
	-- "ruff",
})

vim.o.pumborder = "rounded"

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method("textDocument/completion") then
			-- vim.opt.completeopt = { "menu", "menuone", "noinsert", "fuzzy", "poppup" }
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
			-- vim.keymap.set("i", "<C-Space>", function()
			-- 	vim.lsp.completion.get()
			-- end)
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

-- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
-- vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
-- vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
-- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
