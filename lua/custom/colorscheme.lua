return {
	{
		"EdenEast/nightfox.nvim",
		priority = 1000,
		-- config = function()
		-- 	require("nightfox").setup()
		-- 	-- vim.cmd.colorscheme("carbonfox")
		-- 	vim.cmd.colorscheme("dayfox")
		-- end,
	},
	{
		"p00f/alabaster.nvim",
		priority = 1000,

		config = function()
			vim.cmd.colorscheme("alabaster")
		end,
	},
}
