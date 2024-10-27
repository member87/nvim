local set = vim.opt

set.termguicolors = true
set.autoindent = true
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.clipboard = "unnamedplus"
set.ignorecase = true
set.mouse = "a"
set.smartindent = true
set.smarttab = true
set.relativenumber = true
set.number = true
set.cursorline = true
set.wrap = false
set.signcolumn = "yes"

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

