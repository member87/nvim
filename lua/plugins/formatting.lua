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
}
