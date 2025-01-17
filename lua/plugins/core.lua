local l = require("core.plugins").load


vim.cmd("highlight SnacksIndent guifg=#45475a")

l({
  {
    "nvim-lua/plenary.nvim"
  },
  {
    "folke/snacks.nvim",
    opts = {
      bigfile = { enabled = true, },
      notifier = { enabled = true },
      lazygit = { enabled = true },
      git = { enabled = true },
      gitbrowse = { enabled = true },
      indent = {
        enabled = true,
        indent = { only_scope = true }
      },
      statuscolumn = { enabled = false },
    },
  }
})
