return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oxocarbon",
    }
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.o.background = "dark"
    end
  },
}
