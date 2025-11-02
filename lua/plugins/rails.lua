-- See also autopairs.lua
return {
  { "tpope/vim-rails" },
  { "RRethy/nvim-treesitter-endwise" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      endwise = {
        enable = true,
      },
      ensure_installed = {
        "ruby",
        "embedded_template", -- for ERB support
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          add_on = { "rails" }, -- Enable ruby-lsp-rails add-on
        },
      },
    },
  },
}
