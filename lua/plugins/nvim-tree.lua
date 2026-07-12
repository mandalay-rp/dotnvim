vim.pack.add({
	"https://github.com/nvim-tree/nvim-tree.lua"
})
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.nvim_tree_auto_close = 1

local function my_on_attach(bufnr) 
    local api = require "nvim-tree.api"

	local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.map.on_attach.default(bufnr)

	-- custom mappings
	vim.keymap.set("n", "u", api.tree.change_root_to_parent, opts("Up"))
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
end

require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
	width = 30,
	},
	renderer = {
	group_empty = true,
	},
	filters = {
	dotfiles = true,
	},
	actions = { 
		open_file = {
            quit_on_open = true,
	},
  },
   on_attach = my_on_attach,
})


vim.cmd([[
      :hi      NvimTreeExecFile    guifg=#ffa0a0
      :hi      NvimTreeSpecialFile guifg=#ff80ff gui=underline
      :hi      NvimTreeSymlink     guifg=Yellow  gui=italic
      :hi link NvimTreeImageFile   Title
  ]])

vim.keymap.set("n", "<F2>", ":NvimTreeToggle<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<C-\\>", ":NvimTreeFindFileToggle<CR>", {silent = true, noremap = true})


require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
	width = 30,
	},
	renderer = {
	group_empty = true,
	},
	filters = {
	dotfiles = true,
	},
	actions = { 
		open_file = {
            quit_on_open = true,
	},
  },
   on_attach = my_on_attach,
})


vim.cmd([[
      :hi      NvimTreeExecFile    guifg=#ffa0a0
      :hi      NvimTreeSpecialFile guifg=#ff80ff gui=underline
      :hi      NvimTreeSymlink     guifg=Yellow  gui=italic
      :hi link NvimTreeImageFile   Title
  ]])

vim.api.nvim_set_keymap("n", "<F2>", ":NvimTreeToggle<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<C-\\>", ":NvimTreeFindFileToggle<CR>", {silent = true, noremap = true})
