vim.pack.add({ "https://github.com/tjgao/quickbuf.nvim" })
vim.keymap.set("n", "<C-p>", "<cmd>QuickBuf<CR>", { desc = "QuickBuf" })
require("quickbuf").setup({
    picker = {
        fuzzy_backend = "mini",
    },
})
-- require("quickbuf").setup({
--     picker = {
--         include_special = false,
--         auto_jump_single = false,
--         isolate_keymaps = true,
--         fuzzy_key = "/",
--         fuzzy_backend = "telescope",
--         fuzzy_open = nil,
--         alternate_key = "<Tab>",
--         alternate_key_display = "",
--         alternate_without_label = true,
--         label_before_name = true,
--         move_up_key = "k",
--         move_down_key = "j",
--         select_key = "<CR>",
--         toggle_pin_key = "T",
--         show_icons = true,
--         pin_display = "P",
--     },
--     persistence = {
--         enabled = false,
--         debounce_ms = 5000,
--     },
--     highlights = {
--         label = { fg = "#ff8800", bold = true },
--         pinned = { link = "DiagnosticOk", bold = true },
--         flags = { link = "Comment" },
--         alternate = { fg = "#ff8800", bold = true },
--         filename = { link = "Normal" },
--         path = { link = "Comment" },
--         muted = { link = "Comment" },
--         cursorline = { link = "Visual" },
--         footer_svt = { link = "DiagnosticWarn" },
--     },
--     window = {
--         border = "rounded",
--         width = nil,
--         height = nil,
--         max_width = 80,
--         min_width = 36,
--         padding = 2,
--         vertical_padding = 1,
--     },
-- })
