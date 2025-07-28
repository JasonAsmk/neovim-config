return {
  "akinsho/toggleterm.nvim",
  event = "VeryLazy",
  config = function()
    require('toggleterm').setup({})
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({
      cmd = "lazygit",
      direction = "float",
      float_opts = {
        border = "double",
      },
      -- function to run on opening the terminal
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
      -- function to run on closing the terminal
      on_close = function(term)
        vim.cmd("startinsert!")
      end,
    })


    function _lazygit_toggle()
      lazygit:toggle()
    end

    return Terminal
  end,
  opts = {
  },
  keys = {
    { "<leader>tt", "<Cmd>ToggleTerm<CR>",            desc = "Toggle terminal" },
    { "<esc>",      [[<C-\><C-n>]],                   mode = 't',               desc = "Close term" },
    { "<leader>gg", "<Cmd>lua _lazygit_toggle()<CR>", desc = "Toggle lazygit" },
    { "<leader>ta", "<Cmd>ToggleTermToggleAll<CR>",   desc = "Toggle all terms" },
  }
}
