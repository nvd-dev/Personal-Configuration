-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable automatically insert comment after <CR> in insert
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
  desc = "Disable New Line Comment",
})

local opt = vim.opt

-- Begin Options

-- Normal, visual, command mode: Block cursor
opt.guicursor = "n-v-c:block,"
  -- Insert, command-line insert, visual select mode: Vertical bar cursor (25% width)
  .. "i-ci-ve:ver25,"
  -- Replace, command-line replace mode: Horizontal bar cursor (20% height)
  .. "r-cr:hor20,"
  -- Operator-pending mode: Horizontal bar cursor (50% height)
  .. "o:hor50,"
  -- All modes: Blinking cursor settings
  .. "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,"
  -- Showmatch mode: Block cursor with faster blink settings
  .. "sm:block-blinkwait175-blinkoff150-blinkon175"

-- opt.shiftwidth = 4
-- opt.smarttab = true
-- opt.expandtab = true
-- opt.tabstop = 4
-- opt.softtabstop = 0
