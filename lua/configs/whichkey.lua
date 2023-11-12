local wk = require("which-key")
local map = vim.api.nvim_set_keymap

vim.g.mapleader = " "

wk.setup()

wk.register({
  ["<leader>"] = {
    f = {
      name = "Finder",
      f = { "<cmd>Telescope find_files<CR>", "Find files" },
      g = { "<cmd>Telescope live_grep<CR>", "Live grep" },
      r = { "<cmd>Telescope oldfiles<CR>", "Open recent files" },
      u = { "<cmd>Lspsaga finder<CR>", "Find references" },
    },
    d = {
      name = "Lsp Definition",
      g = { "<cmd>Lspsaga goto_definition<CR>", "Goto definition" },
      f = { "<cmd>Lspsaga peek_definition<CR>", "Peek definition" },
    },
    b = { "<cmd>ToggleBlame virtual<CR>", "Toggle git blame" },
    s = { "<cmd>vsplit<CR>", "Split vertically" },
  },
  ["K"] = { "<cmd>Lspsaga hover_doc<CR>", "Hover documentation" },
  r = {
    n = { "<cmd>Lspsaga rename<CR>", "Rename" },
  },
  c = {
    a = { "<cmd>Lspsaga code_action<CR>", "Code Actions" }
  },
  ["."] = { "<cmd>BufferLineCycleNext<CR>", "Next bugger" },
  [","] = { "<cmd>BufferLineCyclePrev<CR>", "Previous buffer" }
})


local capabilities = require("cmp_nvim_lsp").default_capabilities()


local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
end
