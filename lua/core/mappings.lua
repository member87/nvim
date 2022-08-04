local opts = { noremap = true, silent = true }

local map = vim.api.nvim_set_keymap

vim.g.mapleader = " "

-- Telescope
map("n", "<A-p>", "<cmd>Telescope find_files<CR>", opts)

-- Bufferline
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

-- Toggle term
map("n", "<A-t>", "<cmd>ToggleTerm<CR>", opts)

-- open symbols outline
map("n", "<A-s>", "<cmd>SymbolsOutline<CR>", opts)

map("n", "<leader>trf", "<cmd>NvimTreeRefresh<CR>", opts)
