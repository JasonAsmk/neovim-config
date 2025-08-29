local function augroup(name)
	return vim.api.nvim_create_augroup("kickstart-" .. name, { clear = true })
end

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = augroup("highlight-yank"),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Organize TS imports and then format
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.js", "*.ts", "*.tsx", "*.jsx" },
	group = augroup("ts-organize-imports"),
	callback = function()
		local organize_imports = require("custom.utils.ts-organize-imports").organize_imports
		-- the following 'organize_imports' and 'format' are blocking sync ops
		organize_imports()
		require("conform").format({ async = false, lsp_format = "never", timeout_ms = 3000 })
	end,
})
