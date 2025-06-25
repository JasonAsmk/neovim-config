-- prevent mason from installing some lsp in Nixos. Add your desired excluded servers like below
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          mason = false,
        },
      },
    },
  },
}
