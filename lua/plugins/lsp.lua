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
    opts = {
      fuzzy = {
        implementation = "lua"
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
      appearance = {
        use_nvim_cmp_as_default = true,
      },
      completion = {
        menu = {
          draw = {
            columns = { { "kind_icon" }, { "label", gap = 1 } },
            components = {
              label = {
                text = function(ctx)
                  return require("colorful-menu").blink_components_text(ctx)
                end,
                highlight = function(ctx)
                  return require("colorful-menu").blink_components_highlight(ctx)
                end,
              },
            },
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
    version = false, -- set this to "*" if you want to always pull the latest change, false to update on release
    opts = {
      -- add any opts here
      provider = "copilot"
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
