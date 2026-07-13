vim.pack.add({
    "https://github.com/vim-autoformat/vim-autoformat"
})

-- vim.g.formatdef_black = '"black --skip-string-normalization -q ".(&textwidth ? "-l".&textwidth : "")." -"'
vim.g.formatdef_black = "black --skip-string-normalization -q-"
