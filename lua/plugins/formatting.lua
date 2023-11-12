local l = require("core.plugins").load

l({
  "windwp/nvim-ts-autotag",
  dependencies = {
    "nvim-treesitter/nvim-treesitter"
  },
  build = ":TSUpdate",
  version = false,
  config = function()
    require('nvim-ts-autotag').setup()
  end
})
l({
  "windwp/nvim-autopairs",
  config = function()
    require("configs.nvim-autopairs")
  end,
})
l({
  "numToStr/Comment.nvim",
  config = function()
    require('Comment').setup()
  end,
})
l({
  "wellle/context.vim",
})
