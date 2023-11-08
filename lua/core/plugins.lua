local packer_status_ok, packer = pcall(require, "packer")
if not packer_status_ok then
  return
end

packer.startup({
  function(use)
    -- Plugin manger
    use("wbthomason/packer.nvim")

    -- Lua functions
    use("nvim-lua/plenary.nvim")

    -- mason
    use({
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
        require("mason-lspconfig").setup()
      end
    })
    use {
      "williamboman/mason-lspconfig.nvim"
    }

    use {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      config = function()
        require("mason-tool-installer").setup({
          auto_update = true,
          run_on_start = true
        })
      end
    }

    -- builtin lsp
    use("neovim/nvim-lspconfig")

    use({
      "hrsh7th/nvim-cmp",
      config = function()
        require("configs.cmp-nvim")
      end,
    })

    -- LSP completion source
    use("hrsh7th/cmp-nvim-lsp")

    -- Buffer completion source
    use({
      "hrsh7th/cmp-buffer",
      after = "nvim-cmp",
    })

    -- Path completion source
    use({
      "hrsh7th/cmp-path",
      after = "nvim-cmp",
    })

    -- Command line completion source
    use({
      "hrsh7th/cmp-cmdline",
      after = "nvim-cmp",
    })

    -- LSP signature
    use({
      "ray-x/lsp_signature.nvim",
      after = "nvim-cmp",
    })

    -- Snippet engine
    use({
      "hrsh7th/vim-vsnip",
      requires = {
        "rafamadriz/friendly-snippets",
      },
    })

    -- Snippet completion source
    use({
      "hrsh7th/cmp-vsnip",
      after = "nvim-cmp",
    })

    -- Syntax highlighting
    use({
      "nvim-treesitter/nvim-treesitter",
      config = function()
        require("configs.treesitter")
      end,
    })

    use({
      "windwp/nvim-ts-autotag",
      requires = "nvim-treesitter/nvim-treesitter",
      config = function()
        require('nvim-ts-autotag').setup()
      end
    })


    use({
      "wellle/context.vim",
    })

    -- Auto pairs
    use({
      "windwp/nvim-autopairs",
      config = function()
        require("configs.nvim-autopairs")
      end,
      after = "nvim-cmp",
    })

    -- Notifications
    use({
      "rcarriga/nvim-notify",
      config = function()
        vim.notify = require("notify")
      end,
    })

    -- Highlight colours
    use({
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("configs.colorizer")
      end,
      after = "nvim-treesitter",
    })

    -- File finder
    use({
      "nvim-telescope/telescope.nvim",
      cmd = "Telescope",
      config = function()
        require("configs.telescope")
      end,
    })

    -- Bufferline
    use({
      "akinsho/bufferline.nvim",
      requires = 'nvim-tree/nvim-web-devicons',
      config = function()
        require("bufferline").setup {}
      end
    })

    -- Statusline
    use({
      "nvim-lualine/lualine.nvim",
      config = function()
        require("configs.lualine")
      end,
    })

    -- File explorer
    use({
      "kyazdani42/nvim-tree.lua",
      config = function()
        require("configs.tree")
      end,
    })

    -- Colour Scheme
    use({
      "catppuccin/nvim",
      config = function()
        local catppuccin = require("catppuccin")
        catppuccin.setup({})

        vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
        vim.cmd("colorscheme catppuccin")
      end,
    })

    -- Icons
    use("kyazdani42/nvim-web-devicons")

    -- Symbols outline
    use("simrat39/symbols-outline.nvim")

    -- Indent Blankline
    use({
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("ibl").setup()
      end,
      after = "nvim-treesitter"
    })

    -- Null-ls
    use({
      "jose-elias-alvarez/null-ls.nvim",
      after = {
        "mason.nvim"
      },
      config = function()
        require("configs.nullls")
      end,
    })

    -- Laravel
    use("jwalton512/vim-blade")

    use({
      "folke/which-key.nvim",
      config = function()
        require("configs.whichkey")
      end,
    })

    use({
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


    use({
      "zbirenbaum/copilot.lua",
      config = function()
        require("copilot").setup({
          suggestion = { enabled = false },
          panel = { enabled = false },
        })
      end

    })

    use({
      "zbirenbaum/copilot-cmp",
      after = { "copilot.lua" },
      config = function()
        require("copilot_cmp").setup()
      end
    })

    use({
      "onsails/lspkind.nvim",
    })
  end,
})
