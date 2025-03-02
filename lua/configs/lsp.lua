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

local lspconfig = require("lspconfig")
require("mason-lspconfig").setup_handlers {
  -- This is a default handler that will be called for each installed server (also for new servers that are installed during a session)
  function(server_name)
    lspconfig[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
    }
  end,
}
