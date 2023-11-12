local l = require("core.plugins").load

l({
  "kyazdani42/nvim-tree.lua",
  config = function()
    require("configs.tree")
  end,
})
l({
  "rcarriga/nvim-notify",
  config = function()
    vim.notify = require("notify")
  end,
})
l({
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("configs.colorizer")
  end,
})
l({
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  config = function()
    require("configs.telescope")
  end,
})
l({
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("configs.treesitter")
  end,
})
l({
  "akinsho/bufferline.nvim",
  requires = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup {}
  end
})
l({
  "nvim-lualine/lualine.nvim",
  config = function()
    require("configs.lualine")
  end,
})
l({
  "kyazdani42/nvim-tree.lua",
  config = function()
    require("configs.tree")
  end,
})
l({
  "catppuccin/nvim",
  config = function()
    vim.cmd.colorscheme "catppuccin"
    require("catppuccin").setup({
      flavour = "mocha",
    })
  end,
})
l({
  "kyazdani42/nvim-web-devicons"
})
l({
  "folke/which-key.nvim",
  config = function()
    require("configs.whichkey")
  end,
})
l({
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
})
l({
  "onsails/lspkind.nvim",
})
l({
  "sindrets/diffview.nvim"
})
