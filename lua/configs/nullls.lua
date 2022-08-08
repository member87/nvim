local nls = require("null-ls")

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local formatting = nls.builtins.formatting
local completion = nls.builtins.completion
local code_actions = nls.builtins.code_actions

require("null-ls").setup({
	sources = {
		formatting.stylua,
		formatting.blade_formatter,
		formatting.prettierd,
		completion.spell,
		completion.vsnip,
		code_actions.gitsigns,
		code_actions.refactoring,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					vim.lsp.buf.formatting_sync()
				end,
			})
		end
	end,
})
