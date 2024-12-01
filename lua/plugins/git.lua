return {
  "lewis6991/gitsigns.nvim",
  enabled = vim.fn.executable "git" == 1,
  opts = {
 --   signs = {
 --     add = { text = get_icon "GitSign" },
 --     change = { text = get_icon "GitSign" },
 --     delete = { text = get_icon "GitSign" },
 --     topdelete = { text = get_icon "GitSign" },
 --     changedelete = { text = get_icon "GitSign" },
 --     untracked = { text = get_icon "GitSign" },
 --   },
    worktrees = vim.g.git_worktrees,
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
        { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  }
}

