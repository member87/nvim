![image](https://github.com/user-attachments/assets/f1e908cb-5b52-47ed-b938-677031728bc9)


![Neovim Requirement](https://img.shields.io/badge/Neovim-%3E%3D%200.11.0-blueviolet?logo=neovim)
![Language](https://img.shields.io/badge/Made%20with-Lua-blue?logo=lua)
![Plugin Manager](https://img.shields.io/badge/Plugin%20manager-Lazy.nvim-green?logo=github)

# Neovim Configuration

This is my personal Neovim configuration, designed for a modern development workflow with a focus on productivity and aesthetics.

## Features

- **UI**: Gruvbox theme, Snacks explorer/picker, and Noice for enhanced UI elements
- **LSP**: Full Language Server Protocol integration with Mason for easy LSP management
- **Completion**: [Blink CMP](https://github.com/saghen/blink.cmp)
- **Formatting**: Conform.nvim for code formatting with support for various languages
- **Git**: Gitsigns for git information in the editor
- **Quality of Life**: WhichKey for keybinding help, UFO for code folding, Autopairs for automatic bracket pairing

## Prerequisites

- Neovim 0.11.0 or later
- Git
- A Nerd Font (for icons)
- ripgrep (for live grep)

## Installation

1. Clone this repository to your Neovim configuration directory:

```bash
git clone git@github.com:member87/nvim.git ~/.config/nvim
```

2. Start Neovim. Lazy.nvim will automatically install all plugins.

## Key Plugins

### Core
- **[snacks.nvim](https://github.com/folke/snacks.nvim)**: Collection of UI enhancements (explorer, picker, dashboard, lazygit, notifier)
- **[mini.nvim](https://github.com/echasnovski/mini.nvim)**: Collection of minimal, independent, and fast Lua modules
- **[plenary.nvim](https://github.com/nvim-lua/plenary.nvim)**: Lua functions library used by many plugins
- **[markview.nvim](https://github.com/OXY2DEV/markview.nvim)**: Enhanced markdown rendering


### UI
- **[gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)**: Retro groove color scheme
- **[noice.nvim](https://github.com/folke/noice.nvim)**: UI enhancement suite
- **[which-key.nvim](https://github.com/folke/which-key.nvim)**: Keybinding guide popup
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)**: Git integration
- **[nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)**: Modern folding
- **[nvim-origami](https://github.com/chrisgrieser/nvim-origami)**: Enhanced folding utilities

### LSP & Completion
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: Configuration for built-in LSP client
- **[mason.nvim](https://github.com/williamboman/mason.nvim)**: Package manager for LSP servers
- **[blink.cmp](https://github.com/saghen/blink.cmp)**: Modern completion engine
- **[tiny-code-action.nvim](https://github.com/rachartier/tiny-code-action.nvim)**: UI for LSP code actions
- **[colorful-menu.nvim](https://github.com/xzbdmw/colorful-menu.nvim)**: Syntax highlighted completion items
- **[lspkind.nvim](https://github.com/onsails/lspkind.nvim)**: VS Code-like icons for completion items
- **[lazydev.nvim](https://github.com/folke/lazydev.nvim)**: Lua development for Neovim config

### Formatting & Syntax
- **[conform.nvim](https://github.com/stevearc/conform.nvim)**: Formatting engine
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: Advanced syntax highlighting
- **[nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)**: Auto close and rename HTML tags
- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)**: Auto pair brackets and quotes
- **[vim-prettier](https://github.com/prettier/vim-prettier)**: Prettier formatting integration

## Structure

- `init.lua`: Entry point
- `lua/core/`: Core configuration (options, keymaps)
- `lua/plugins/`: Plugin specifications
- `lua/configs/`: Plugin-specific configurations

## Customization

Edit files in the `lua/plugins/` directory to add or modify plugins, and `lua/configs/` to adjust plugin settings.

