return {
	"ThePrimeagen/harpoon",
	opts = {},
	keys = {
		{
			"<leader>mm",
			function()
				require("harpoon.mark").add_file()
			end,
			desc = "Harpoon a file",
		},
		{
			"<leader>mn",
			function()
				require("harpoon.ui").nav_next()
			end,
			desc = "Get next harpooned buffer",
		},
		{
			"<leader>mp",
			function()
				require("harpoon.ui").nav_prev()
			end,
			desc = "Get previous harpooned buffer",
		},
		{
			"<leader>mt",
			function()
				require("harpoon.ui").gotoTerminal(1)
			end,
			desc = "Go to term",
		},
		{
			"<leader>md",
			function()
				require("harpoon.mark").rm_file()
			end,
			desc = "Delete harpoon mark",
		},
		{
			"<leader>mca",
			function()
				require("harpoon.mark").clear_all()
			end,
			desc = "Clear all harpoon marks",
		},
		{
			"<leader>m?",
			function()
				require("harpoon.ui").toggle_quick_menu()
			end,
			desc = "Harpoon: open menu",
		},
		-- Direct keybindings to go to specific harpooned files (1-9)
		{
			"<leader>m1",
			function()
				require("harpoon.ui").nav_file(1)
			end,
			desc = "Harpoon: Go to file 1",
		},
		{
			"<leader>m2",
			function()
				require("harpoon.ui").nav_file(2)
			end,
			desc = "Harpoon: Go to file 2",
		},
		{
			"<leader>m3",
			function()
				require("harpoon.ui").nav_file(3)
			end,
			desc = "Harpoon: Go to file 3",
		},
		{
			"<leader>m4",
			function()
				require("harpoon.ui").nav_file(4)
			end,
			desc = "Harpoon: Go to file 4",
		},
		{
			"<leader>m5",
			function()
				require("harpoon.ui").nav_file(5)
			end,
			desc = "Harpoon: Go to file 5",
		},
		{
			"<leader>m6",
			function()
				require("harpoon.ui").nav_file(6)
			end,
			desc = "Harpoon: Go to file 6",
		},
		{
			"<leader>m7",
			function()
				require("harpoon.ui").nav_file(7)
			end,
			desc = "Harpoon: Go to file 7",
		},
		{
			"<leader>m8",
			function()
				require("harpoon.ui").nav_file(8)
			end,
			desc = "Harpoon: Go to file 8",
		},
		{
			"<leader>m9",
			function()
				require("harpoon.ui").nav_file(9)
			end,
			desc = "Harpoon: Go to file 9",
		},
	},
}
