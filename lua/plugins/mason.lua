return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    opts = {
      ensure_installed = {}
    },
    config = function(_, opts)
      require("mason").setup(opts)
      local mr = require("mason-registry")
      local function ensure_installed()
        for _, tool in ipairs(opts.ensure_installed) do
          local p = mr.get_package(tool)
          if not p:is_installed() then
            p:install()
          end
        end
      end
      if mr.refresh then
        mr.refresh(ensure_installed)
      else
        ensure_installed()
      end
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "tsserver",
        "angularls"
      }
    },
    config = function(_, _)
      require("mason-lspconfig").setup()
    end
  },
  {
    "neovim/nvim-lspconfig",
    event = "LspAttach",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim"
    },
    opts = {},
    config = function(_, opts)
      -- after installing servers via mason and mason-lspconfig, we need to initialize them
      -- in nvim's LSP. This could also be done in mason-lspconfig instead of here
      -- check :h mason-lspconfig-quickstart
      local lsp_config = require("lspconfig")
      local mason_lspconfig = require("mason-lspconfig")
      for _, server_name in ipairs(mason_lspconfig.get_installed_servers()) do
        lsp_config[server_name].setup {}
        -- you can also do special handling, check docs
      end
    end
  },
}
