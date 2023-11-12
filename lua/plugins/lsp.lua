local l = require("core.plugins").load

l({
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim"
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
  end,
})
l({
  "hrsh7th/nvim-cmp",
  config = function()
    require("configs.cmp-nvim")
  end,
})
l({
  "hrsh7th/cmp-nvim-lsp"
})
l({
  "hrsh7th/cmp-buffer"
})
l({
  "hrsh7th/cmp-path"
})
l({
  "hrsh7th/cmp-cmdline"
})
l({
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  opts = {},
  config = function(_, opts) require 'lsp_signature'.setup(opts) end
})
l({
  "hrsh7th/vim-vsnip",
  dependencies = {
    "rafamadriz/friendly-snippets",
  }
})
l({
  "hrsh7th/cmp-vsnip"
})
l({
  "zbirenbaum/copilot.lua",
  config = function()
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  end
})
l({
  "zbirenbaum/copilot-cmp",
  after = { "copilot.lua" },
  config = function()
    require("copilot_cmp").setup()
  end
})
l({
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup({})
  end,
})
