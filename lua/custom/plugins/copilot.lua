return {
	"zbirenbaum/copilot.lua",
	requires = {
		"copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
	},
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({})
	end,
	keys = {
		{
			"<S-Tab>",
			function()
				require("copilot.suggestion").accept()
			end,
			mode = "i",
			desc = "Accept Copilot suggestion",
		},
		{
			"<leader>an",
			function()
				require("copilot.suggestion").next()
			end,
			mode = "i",
			desc = "Next Copilot suggestion",
		},
		{
			"<leader>ap",
			function()
				require("copilot.suggestion").prev()
			end,
			mode = "i",
			desc = "Previous Copilot suggestion",
		},
		{
			"<leader>ae",
			function()
				require("copilot.suggestion").toggle_auto_trigger()
			end,
			desc = "Toggle Copilot auto trigger",
		},
	},
}
