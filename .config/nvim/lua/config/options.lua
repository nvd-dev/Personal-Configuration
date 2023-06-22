-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable automatically insert comment after <CR> in insert
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
  end,
})

local opt = vim.opt

opt.shiftwidth = 2
opt.smarttab = true
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 0
