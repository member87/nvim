require("mason").setup()
require("mason-lspconfig").setup()

local capabilities = require('blink.cmp').get_lsp_capabilities()

require("mason-lspconfig").setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup({ capabilities = capabilities })
  end,
  ["tailwindcss"] = function()
    require("lspconfig").tailwindcss.setup({
      capabilities = capabilities,
      settings = {
        tailwindCSS = {
          experimental = {
            classRegex = {
              { "cva\\(([^)(]*(?:\\([^)(]*(?:\\([^)(]*(?:\\([^)(]*\\)[^)(]*)*\\)[^)(]*)*\\)[^)(]*)*)\\)", }
            },
          },
        },
      },
    })
  end,
}
