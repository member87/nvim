return {

  -- Lua Functions
  {
    "nvim-lua/plenary.nvim"
  },

  -- LSP
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()
    end,
    dependencies = {
      "williamboman/mason-lspconfig.nvim"
    }
  },
  {
    "neovim/nvim-lspconfig"
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("configs.cmp-nvim")
    end,
  },
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "hrsh7th/cmp-buffer"
  },
  {
    "hrsh7th/cmp-path"
  },
  {
    "hrsh7th/cmp-cmdline"
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts) require'lsp_signature'.setup(opts) end
  },
  {
    "hrsh7th/vim-vsnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    }
  },
  {
    "hrsh7th/cmp-vsnip"
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
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end
  },

  -- Formatting 
  {
    "windwp/nvim-ts-autotag",
    dependencies = {
      "nvim-treesitter/nvim-treesitter"
    },
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

  -- Context
  {
    "wellle/context.vim",
  },

  -- UI
  { 
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("configs.tree")
    end,
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      vim.notify = require("notify")
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("configs.colorizer")
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    config = function()
      require("configs.telescope")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
      config = function()
        require("configs.treesitter")
      end,
  },
  {
    "akinsho/bufferline.nvim",
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup {}
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("configs.lualine")
    end,
  },
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("configs.tree")
    end,
  },
  {
    "catppuccin/nvim",
    config = function()
      vim.cmd.colorscheme "catppuccin"
      require("catppuccin").setup({
        flavour = "mocha",
      })
    end,
  },
  {
    "kyazdani42/nvim-web-devicons"
  },
  {
    "folke/which-key.nvim",
    config = function()
      require("configs.whichkey")
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        current_line_blame = true,
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = "eol", -- "eol" | "overlay" | "right_align"
          delay = 500,
          ignore_whitespace = false,
        },
      })
    end
  },
  {
    "onsails/lspkind.nvim",
  }
}