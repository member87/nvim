local M = {}

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

		-- builtin lsp
		use("neovim/nvim-lspconfig")
		use("williamboman/nvim-lsp-installer")

		use({
			"hrsh7th/nvim-cmp",
			event = "BufRead",
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
			run = ":TSUpdate",
			event = "BufRead",
			cmd = {
				"TSInstall",
				"TSInstallInfo",
				"TSInstallSync",
				"TSUninstall",
				"TSUpdate",
				"TSUpdateSync",
				"TSDisableAll",
				"TSEnableAll",
			},
			config = function()
				require("configs.treesitter")
			end,
			requires = {
				{
					-- Parenthesis highlighting
					"p00f/nvim-ts-rainbow",
					after = "nvim-treesitter",
				},
			},
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

		-- Better quick fix
		use("kevinhwang91/nvim-bqf")

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
			"romgrk/barbar.nvim",
			after = "nvim-web-devicons",
		})

		-- Statusline
		use({
			"nvim-lualine/lualine.nvim",
			after = "barbar.nvim",
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
				vim.cmd([[colorscheme catppuccin]])
			end,
		})

		-- Icons
		use("kyazdani42/nvim-web-devicons")

		-- Terminal
		use({
			"akinsho/nvim-toggleterm.lua",
			cmd = "ToggleTerm",
			config = function()
				require("configs.toggleterm")
			end,
		})

		-- Symbols outline
		use("simrat39/symbols-outline.nvim")

		-- Indent Blankline
		use({
			"lukas-reineke/indent-blankline.nvim",
			config = function()
				require("indent_blankline").setup({
					space_char_blankline = " ",
					show_current_context = true,
					show_current_context_start = true,
				})
			end,
		})

		-- Null-ls
		use({
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("configs.nullls")
			end,
		})

		-- Laravel
		use("jwalton512/vim-blade")
	end,
})

return M
