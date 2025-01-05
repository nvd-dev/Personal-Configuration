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

-- map("v", "J", ":m '>+1<CR>gv==kgvo<esc>=kgvo", { desc = "move highlighted text down" })
-- map("v", "K", ":m '<-2<CR>gv==jgvo<esc>=jgvo", { desc = "move highlighted text up" })

-- Editor behavior
-- map("n", ";;", "A;<esc>", { desc = "Append ; in normal mode" })
map({ "n", "i" }, ";;", "<esc>A;<esc>", { desc = "Append ; at the end of the line" })
map({ "n", "i" }, "<C-;><C-;>", "<esc>A:<CR>", { desc = "Append : at the end of the line" })
map({ "n", "i" }, "<C-,>", "<esc>A,<CR>", { desc = "Append , at the end of the line" })
map({ "n", "i" }, "<C-,><C-,>", '<esc>A,<CR>""<esc>i', { desc = "Append , at the end of the line" })

-- map("n", "<CR>", "ciw", { desc = "Quickly change the word under the cursor" })
map("i", "jj", "<esc>", { desc = "Quickly exit insert mode" })

map("n", "<leader>ya", ":%y<CR>", { desc = "Yank everything within the file" })
map("n", "<leader>da", ":%d<CR>", { desc = "Delete everything within the file" })

-- Langs --
-- Python
map("n", "<leader>r", ":!python3 %<CR>", { desc = "Run Python code from the terminal" })

-- Make
map("n", "<leader>mr", ":!make run<CR>", { desc = "Compile and run the last modified cpp file." })
map("n", "<leader>mc", ":!make clean<CR>", { desc = "Make clean" })
