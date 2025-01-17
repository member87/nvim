return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      filesystem = { hijack_netrw_behavior = "open_current" }
    }
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
    "catppuccin/nvim",
    config = function()
      vim.cmd.colorscheme "catppuccin"
      require("catppuccin").setup({
        flavour = "mocha",
      })
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("noice").setup({
        lsp = {
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
          },
        },
        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = true,         -- use a classic bottom cmdline for search
          command_palette = true,       -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false,           -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false,       -- add a border to hover docs and signature help
        },
      })
    end
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
}
