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
      scroll = { enabled = true },
      dashboard = { enabled = true },
      indent = {
        enabled = true,
        indent = { only_scope = true }
      },
      statuscolumn = { enabled = false },
    },
  },
  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      require('mini.basics').setup()
      require('mini.statusline').setup()
      local hipatterns = require('mini.hipatterns')
      hipatterns.setup({
        highlighters = {
          fixme     = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
          hack      = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
          todo      = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
          note      = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },
          hex_color = hipatterns.gen_highlighter.hex_color(),
        }
      })

      package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end
  }
})
