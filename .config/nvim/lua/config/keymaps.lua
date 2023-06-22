-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Move Lines
map("n", "∆", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "˚", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "∆", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "˚", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "∆", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "˚", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Editor behavior
map("n", ";;", "A;<esc>", { desc = "Append ; in normal mode" })
map("i", ";;", "<esc>A;<CR>", { desc = "Append ; in insert mode" })

map("i", "jj", "<esc>", { desc = "Quickly exit insert mode" })

-- Python
map("n", "<leader>r", ":!python3 %<CR>", { desc = "Run Python code" })
