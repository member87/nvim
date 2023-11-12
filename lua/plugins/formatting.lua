local l = require("core.plugins").load

l({
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
    "numToStr/Comment.nvim",
    config = function()
      require('Comment').setup()
    end,
  },
  {
    "wellle/context.vim",
  },
})
