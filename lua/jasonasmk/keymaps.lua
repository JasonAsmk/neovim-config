local map = vim.keymap.set

map("n", "<leader>e", "<cmd>Neotree toggle=true<cr>", { desc= "Open Neo Tree" })

local telescope = require('telescope.builtin')
map('n', '<leader>ff', telescope.find_files, { desc = "Find Files"})
map('n', '<leader>fg', telescope.live_grep, { desc = "Live grep" })
map('n', '<leader>fb', telescope.buffers, { desc = "Open buffers" })
map('n', '<leader>fh', telescope.help_tags, { desc = "Help Tags" })
