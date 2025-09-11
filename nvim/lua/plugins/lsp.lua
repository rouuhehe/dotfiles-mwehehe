return {
  -- Mason
  { "williamboman/mason.nvim", config = true },

  -- Mason LSP Config
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright", "clangd", "jdtls", "lua_ls",
          "jsonls", "marksman", "cssls", "html"
        },
      })
    end,
  },

  -- LSPConfig
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local navic = require("nvim-navic")

      local on_attach = function(client, bufnr)
        if client.server_capabilities.documentSymbolProvider then
          navic.attach(client, bufnr)
        end
      end

      local servers = {
        pyright = {}, ts_ls = {}, clangd = {}, jdtls = {}, lua_ls = {},
        jsonls = {}, marksman = {}, cssls = {}, html = {}, rust_analyzer = {},
        gopls = {}, bashls = {},
      }

      for name, config in pairs(servers) do
        config.on_attach = on_attach
        lspconfig[name].setup(config)
      end
    end,
  },

  -- Breadcrumbs Navic
  {
    "SmiteshP/nvim-navic",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      vim.g.navic_silence = true
    end,
  },
}

