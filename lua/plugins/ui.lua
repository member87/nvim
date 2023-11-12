local l = require("core.plugins").load

l({
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
  },
  {
    "sindrets/diffview.nvim"
  },
  {
    "FabijanZulj/blame.nvim"
  } })
