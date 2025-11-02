-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false

-- Display a rounded border around floating windows
vim.o.winborder = "rounded"

-- Ruby on Rails
-- Set to "solargraph" to use solargraph instead of ruby_lsp.
-- vim.g.lazyvim_ruby_lsp = "ruby_lsp"
vim.g.lazyvim_ruby_lsp = "ruby_lsp"

P = function(v)
  vim.print(v)
  return v
end
