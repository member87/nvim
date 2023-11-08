local wk = require("which-key")
local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

wk.setup()

wk.register({
  ["<leader>f"] = {
    name = "Find",
    f = { "<cmd>Telescope find_files<CR>", "Find files" },
    g = { "<cmd>Telescope live_grep<CR>", "Live grep" },
    r = { "<cmd>Telescope oldfiles<CR>", "Open recent files" },
  },
})

map("n", "<A-,>", "<cmd>BufferPrevious<CR>", opts)
map("n", "<A-.>", "<cmd>BufferNext<CR>", opts)
map("n", "<A-c>", "<cmd>BufferClose<CR>", opts)
map("n", "<A-1>", "<cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<cmd>BufferGoto 9<CR>", opts)

-- Nvim NvimTreeToggle
map("n", "<A-m>", "<cmd>NvimTreeToggle<CR>", opts)

-- open symbols outline
map("n", "<A-s>", "<cmd>SymbolsOutline<CR>", opts)

-- nvim tree NvimTreeRefresh
map("n", "<leader>trf", "<cmd>NvimTreeRefresh<CR>", opts)
