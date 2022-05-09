local M = {}

local packer_status_ok, packer = pcall(require, 'packer')
if not packer_status_ok then
  return
end

packer.startup {
  function(use)

    -- Plugin manger
    use {
      'wbthomason/packer.nvim'
    }

    -- Lua functions
    use {
      'nvim-lua/plenary.nvim',
    }

    -- builtin lsp
    use {
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',
    }


    use {
      'hrsh7th/nvim-cmp',
      event = 'BufRead',
      config = function()
        require('configs.cmp-nvim').config()
      end,
    }


    -- LSP completion source
    use {
      'hrsh7th/cmp-nvim-lsp',
    }

    -- Buffer completion source
    use {
      'hrsh7th/cmp-buffer',
      after = 'nvim-cmp',
    }

    -- Path completion source
    use {
      'hrsh7th/cmp-path',
      after = 'nvim-cmp',
    }

    -- Command line completion source
    use {
      'hrsh7th/cmp-cmdline',
      after = 'nvim-cmp',
    }

    -- LSP signature
    use {
      'ray-x/lsp_signature.nvim',
      after = 'nvim-cmp',
    }

    -- Snippet engine
    use {
      'hrsh7th/vim-vsnip',
      requires = {
        -- Snippet collections
        'rafamadriz/friendly-snippets',
      },
    }

    -- Snippet completion source
    use {
      'hrsh7th/cmp-vsnip',
      after = 'nvim-cmp',
    }


    -- Syntax highlighting
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      event = 'BufRead',
      cmd = {
        'TSInstall',
        'TSInstallInfo',
        'TSInstallSync',
        'TSUninstall',
        'TSUpdate',
        'TSUpdateSync',
        'TSDisableAll',
        'TSEnableAll',
      },
      config = function()
        require('configs.treesitter').config()
      end,
      requires = {
        {
          -- Parenthesis highlighting
          'p00f/nvim-ts-rainbow',
          after = 'nvim-treesitter',
        },
      },
    }


    -- Auto pairs
    use {
      'windwp/nvim-autopairs',
      config = function()
        require('nvim-autopairs').setup{}
      end
    }

    -- Git intergration (CURRENTLY BROKEN)
    --[[
    use {
      'tanvirtin/vgit.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      },
      config = function()
        require('configs.vgit-nvim').config()
      end
    }
    ]]


    -- Notifications
    use {
      'rcarriga/nvim-notify',
      config = function()
        vim.notify = require("notify")
      end
    }


    -- Highlight colours
    use {
      'norcalli/nvim-colorizer.lua',
      config = function()
        require('configs.colorizer')
      end,
      after = 'nvim-treesitter'
    }


    -- Better quick fix
    use {
      'kevinhwang91/nvim-bqf'
    }

    -- File finder
    use {
      'nvim-telescope/telescope.nvim',
      cmd = 'Telescope',
      config = function()
        require('configs.telescope').config()
      end,
    }

    -- Bufferline
    use {
      'romgrk/barbar.nvim',
      after = 'nvim-web-devicons',
    }

    -- Statusline
    use {
      'nvim-lualine/lualine.nvim',
      after = 'barbar.nvim',
      config = function()
        require('configs.lualine').config()
      end,
    }

    -- File explorer
    use {
      'kyazdani42/nvim-tree.lua',
      config = function()
        require('configs.nvim-tree').config()
      end,
    }

    -- Colour Scheme
    use {
      'RRethy/nvim-base16',
      config = function()
        vim.cmd 'colorscheme base16-material-darker'
        vim.cmd 'highlight LineNr guifg=#4a4a4a'
      end
    }

    -- Icons
    use {
      'kyazdani42/nvim-web-devicons',
    }

    -- Terminal
    use {
      'akinsho/nvim-toggleterm.lua',
      cmd = 'ToggleTerm',
      config = function()
        require("configs.toggleterm").config()
      end
    }

    -- Start screen
    use {
      'glepnir/dashboard-nvim',
      config = function()
        -- require("configs.dashboard").config()
      end,
    }

    -- Symbols outline
    use {
      'simrat39/symbols-outline.nvim'
    }

    use {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
      end
    }

    use {
      "danymat/neogen",
      config = function()
        require('neogen').setup {}
      end,
      requires = "nvim-treesitter/nvim-treesitter",
    }

  use {
      'weilbith/nvim-code-action-menu',
      cmd = 'CodeActionMenu',
    }

  end
}

return M
