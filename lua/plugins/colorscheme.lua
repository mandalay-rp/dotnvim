vim.pack.add({
    "https://github.com/folke/tokyonight.nvim",
    "https://github.com/wtfox/jellybeans.nvim",
    { src = "https://github.com/catppuccin/nvim", name = "catppuccin" }
})

require("tokyonight").setup({
    style = "night",
    transparent = true
})


-- vim.cmd[[colorscheme catppuccin-nvim]]
-- vim.cmd[[colorscheme jellybeans]]
vim.cmd[[colorscheme tokyonight]]
