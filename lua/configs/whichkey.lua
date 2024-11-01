local wk = require("which-key")

vim.g.mapleader = " "

wk.setup()

wk.add({
  { "[b",         "<cmd>BufferLineCyclePrev<CR>",          desc = "Previous buffer" },
  { "b]",         "<cmd>BufferLineCycleNext<CR>",          desc = "Next bugger" },
  { "<leader>b",  "<cmd>ToggleBlame virtual<CR>",          desc = "Toggle git blame" },
  { "<leader>d",  group = "Lsp Definition" },
  { "<leader>df", "<cmd>Lspsaga peek_definition<CR>",      desc = "Peek definition" },
  { "<leader>dg", "<cmd>Lspsaga goto_definition<CR>",      desc = "Goto definition" },
  { "<leader>f",  group = "Finder" },
  { "<leader>ff", "<cmd>Telescope find_files<CR>",         desc = "Find files" },
  { "<leader>fg", "<cmd>Telescope live_grep<CR>",          desc = "Live grep" },
  { "<leader>fr", "<cmd>Telescope oldfiles<CR>",           desc = "Open recent files" },
  { "<leader>fu", "<cmd>Lspsaga finder<CR>",               desc = "Find references" },
  { "<leader>s",  "<cmd>vsplit<CR>",                       desc = "Split vertically" },
  { "K",          "<cmd>Lspsaga hover_doc<CR>",            desc = "Hover documentation" },
  { "ca",         "<cmd>Lspsaga code_action<CR>",          desc = "Code Actions" },
  { "qf",         "<cmd>Lspsaga show_buf_diagnostics<CR>", desc = "Show diagnostics" },
  { "rn",         "<cmd>Lspsaga rename<CR>",               desc = "Rename" },
  { "<leader>m",  "<cmd>NvimTreeToggle<CR>",               desc = "Toggle NvimTree" }
})


local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
end
