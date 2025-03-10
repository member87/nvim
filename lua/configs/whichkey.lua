local wk = require("which-key")

wk.setup()

wk.add({
  { "<leader>df", "<cmd>Lspsaga peek_definition<CR>",       desc = "Peek definition" },
  { "<leader>dg", "<cmd>Lspsaga goto_definition<CR>",       desc = "Goto definition" },
  { "<leader>el", "<cmd>Lspsaga show_line_diagnostics<CR>", desc = "Show line diagnostics" },
  { "<leader>en", "<cmd>Lspsaga diagnostic_jump_next<CR>",  desc = "Jump to next diagnostic" },
  { "<leader>ep", "<cmd>Lspsaga diagnostic_jump_prev<CR>",  desc = "Jump to previous diagnostic" },
  { "<leader>er", "<cmd>Lspsaga rename<CR>",                desc = "Rename" },
  { "<leader>f",  group = "Finder" },
  { "<leader>ff", "<cmd>Telescope find_files<CR>",          desc = "Find files" },
  { "<leader>fg", "<cmd>Telescope live_grep<CR>",           desc = "Live grep" },
  { "<leader>fr", "<cmd>Telescope oldfiles<CR>",            desc = "Open recent files" },
  { "<leader>fu", "<cmd>Lspsaga finder<CR>",                desc = "Find references" },
  { "<leader>s",  "<cmd>vsplit<CR>",                        desc = "Split vertically" },
  { "K",          "<cmd>Lspsaga hover_doc<CR>",             desc = "Hover documentation" },
  { "ca",         "<cmd>Lspsaga code_action<CR>",           desc = "Code Actions" },
  { "qf",         "<cmd>Lspsaga show_buf_diagnostics<CR>",  desc = "Show diagnostics" },
  { "rn",         "<cmd>Lspsaga rename<CR>",                desc = "Rename" },
  { "<leader>m",  "<cmd>Neotree toggle<CR>",                desc = "Toggle Neotree" },
  { "<leader>n",  "<cmd>Neotree reveal<CR>",                desc = "Neotree reveal current file" },
  { "<leader>gg", function() Snacks.lazygit() end,          desc = "Open LazyGit" },
  { "<leader>gb", function() Snacks.gitbrowse() end,        desc = "Open git repo" },
  { "<leader>aa", "<cmd>AvanteToggle<CR>",                  desc = "Toggle Avante" },
  { "<leader>fd", "<cmd>FormatDisable<CR>",                 desc = "Disable Formatting" },
  { "<leader>fe", "<cmd>FormatEnable<CR>",                  desc = "Enable Formatting" },
})
