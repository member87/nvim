return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require('configs.lsp')
    end
  },
  {
    "saghen/blink.cmp",
    dependencies = {
      'rafamadriz/friendly-snippets',
      'giuxtaposition/blink-cmp-copilot',
      'xzbdmw/colorful-menu.nvim'
    },
    version = "v0.*",
    opts = {
      fuzzy = {
        implementation = "prefer_rust_with_warning"
      },
      sources = {
        default = { 'copilot', 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
          copilot = {
            name = "copilot",
            module = "blink-cmp-copilot",
            score_offset = 100,
            async = true,
          },
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      require('lint').linters_by_ft = {
        astro = { 'eslint_d' },
      }
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end
  },
  {
    "giuxtaposition/blink-cmp-copilot",
    after = { "copilot.lua" },
  },
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup({})
    end,
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false,
    opts = {
      provider = "copilot",
      copilot = {
        model = "claude-3.7-sonnet",
        endpoint = "https://api.githubcopilot.com",
        allow_insecure = false,
        timeout = 10 * 60 * 1000,
        temperature = 0,
        max_completion_tokens = 1000000,
        reasoning_effort = "high",
      }
    },
    build = "make",
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "zbirenbaum/copilot.lua",
      {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  }
}
