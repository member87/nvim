local wk = require("which-key")

wk.setup()

wk.add({
  { "<leader>v",  "<cmd>vsplit<CR>",                                        desc = "Split vertically" },
  { "<leader>h",  "<cmd>split<CR>",                                         desc = "Split horizontally" },
  { "<leader>q",  "<cmd>q<CR>",                                             desc = "Quit window" },
  { "K",          function() return vim.lsp.buf.hover() end,                desc = "Hover" },
  { "gK",         function() return vim.lsp.buf.signature_help() end,       desc = "Signature Help" },
  { "<leader>ca", function() require("tiny-code-action").code_action() end, desc = "Code Actions" },
  { "<leader>cc", vim.lsp.codelens.run,                                     desc = "Run Codelens",               mode = { "n", "x" } },
  { "<leader>cC", vim.lsp.codelens.refresh,                                 desc = "Refresh & Display Codelens", mode = { "n" } },


  -- Toggle Commands
  {
    "<leader>td",
    function()
      if vim.diagnostic.config().virtual_lines then
        vim.diagnostic.config({ virtual_lines = false })
      else
        vim.diagnostic.config({ virtual_lines = true });
      end
    end,
    desc = "Toggle LSP Diagnostics"
  },
  {
    "<leader>tf",
    function()
      vim.g.disable_autoformat = not vim.g.disable_autoformat
    end,
    desc = "Toggle Autoformat On Save"
  }
})
