local plugins = {
  {
  "ThePrimeagen/vim-be-good"
  },
    {
        "jose-elias-alvarez/null-ls.nvim",
        event = "VeryLazy",
        opts = function()
            return require "custom.configs.null-ls"
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "pyright",
                "clangd",
                "clang-format",
                "omnisharp-mono",
                "stylua",
          },
        },
    },
}

return plugins
