local wk = require("which-key")

vim.g.mapleader = " "

wk.setup()

wk.register({
  f = {
    name = "Find",
    f = { "<cmd>Telescope find_files<CR>", "Find files" },
    g = { "<cmd>Telescope live_grep<CR>", "Live grep" },
    r = { "<cmd>Telescope oldfiles<CR>", "Open recent files" },
  },
}, { prefix = "<leader>" })

wk.register({
  -- Bufferline
  ["<A-,>"] = { "<cmd>BufferPrevious<CR>" },
  ["<A-.>"] = { "<cmd>BufferNext<CR>" },
  ["<A-c>"] = { "<cmd>BufferClose<CR>" },
  ["<A-1>"] = { "<cmd>BufferGoto 1<CR>" },
  ["<A-2>"] = { "<cmd>BufferGoto 2<CR>" },
  ["<A-3>"] = { "<cmd>BufferGoto 3<CR>" },
  ["<A-4>"] = { "<cmd>BufferGoto 4<CR>" },
  ["<A-5>"] = { "<cmd>BufferGoto 5<CR>" },
  ["<A-6>"] = { "<cmd>BufferGoto 6<CR>" },
  ["<A-7>"] = { "<cmd>BufferGoto 7<CR>" },
  ["<A-8>"] = { "<cmd>BufferGoto 8<CR>" },
  ["<A-9>"] = { "<cmd>BufferGoto 9<CR>" },

  -- Nvim NvimTreeToggle
  ["<A-m>"] = { "<cmd>NvimTreeToggle<CR>" },

  -- Toggle term
  ["<A-t>"] = { "<cmd>ToggleTerm<CR>" },

  -- open symbols outline
  ["<A-s>"] = { "<cmd>SymbolsOutline<CR>" },

  -- nvim tree
  ["<leader>trf"] = { "<cmd>NvimTreeRefresh<CR>" },
})
