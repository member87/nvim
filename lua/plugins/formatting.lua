return {
  {
    "windwp/nvim-ts-autotag",
    dependencies = {
      "nvim-treesitter/nvim-treesitter"
    },
    build = ":TSUpdate",
    version = false,
    config = function()
      require('nvim-ts-autotag').setup()
    end
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("configs.nvim-autopairs")
    end,
  },
  {
    "prettier/vim-prettier",
    config = function()
      vim.g['prettier#autoformat'] = 1
      vim.g['prettier#autoformat_require_pragma'] = 0
    end
  },
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          astro = { "prettierd", "eslint_d" },
          nix = { "alejandra" }
        },
        format_on_save = function(bufnr)
          -- Disable with a global or buffer-local variable
          if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
          end
          return { timeout_ms = 500, lsp_format = "fallback" }
        end
      })
    end
  },
}
