local M = {}

local set = vim.opt

set.autoindent = true
set.expandtab = false
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

--[[
vim.api.nvim_command([[
autocmd filetype php set filetype=php.html.css
autocmd filetype blade set filetype=blade.php.html.css
]]

return M
