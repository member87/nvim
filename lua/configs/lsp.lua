require("mason").setup()
require("mason-lspconfig").setup()
local nvim_lsp = require("lspconfig")
nvim_lsp.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})
nvim_lsp.nil_ls.setup({
  autostart = true,
  settings = {
    ['nil'] = {
      formatting = {
        command = { "nixfmt" },
      },
    },
  },
})
