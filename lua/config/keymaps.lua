-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keys = require("utils.keys")

-- General
keys.map({ "n" }, "<leader>Q", "<cmd>qa!<cr>", "Quit All")

-- Enable MacOS Word Backspace and Delete
keys.map({ "i" }, "<M-Bs>", "<C-W>", "Alt Backspace")
keys.map({ "i" }, "<M-Del>", "<C-O>dw", "Alt Delete")

-- Windows
keys.map({ "n" }, "<S-Left>", "<C-w>h", "Move Left")
keys.map({ "n" }, "<S-Right>", "<C-w>l", "Move Left")
keys.map({ "n" }, "<S-Up>", "<C-w>k", "Move Up")
keys.map({ "n" }, "<S-Down>", "<C-w>j", "Move Down")
keys.map({ "n" }, "<leader>w<C-Up>", "<cmd>to split<cr>", "Split to Top")
keys.map({ "n" }, "<leader>w<C-Down>", "<cmd>bo split<cr>", "Split to Bottom")
keys.map({ "n" }, "<leader>w<C-Left>", "<cmd>to vsplit<cr>", "Split Left")
keys.map({ "n" }, "<leader>w<C-Right>", "<cmd>bo vsplit<cr>", "Split Right")
keys.map({ "n" }, "<leader>w<Up>", "<cmd>leftabove split<cr>", "Split Up")
keys.map({ "n" }, "<leader>w<Down>", "<cmd>split<cr>", "Split Down")
keys.map({ "n" }, "<leader>w<Left>", "<cmd>leftabove vsplit<cr>", "Split to Left")
keys.map({ "n" }, "<leader>w<Right>", "<cmd>vsplit<cr>", "Split to Right")
keys.map({ "n" }, "<leader>wO", "<cmd>only<cr>", "Only")
keys.map({ "n" }, "<leader>wo", "<C-w>w", "Other Window")
vim.keymap.del({ "n" }, "<leader>w-")
vim.keymap.del({ "n" }, "<leader>w|")

-- Buffers
keys.map({ "n" }, "<leader>bn", "<cmd>enew<cr>", "New")
keys.map({ "n" }, "<leader>bo", "<cmd>bp<cr>", "Other Buffer")
keys.map({ "n" }, "<leader>b<Left>", "<cmd>bp<cr>", "Previous Buffer")
keys.map({ "n" }, "<leader>bh", "<cmd>bp<cr>", "Previous Buffer")
keys.map({ "n" }, "<leader>b<Right>", "<cmd>bp<cr>", "Next Buffer")
keys.map({ "n" }, "<leader>bl", "<cmd>bp<cr>", "Next Buffer")
vim.keymap.del({ "n" }, "<leader>bb")

vim.cmd([[
cmap <Down> <C-N>
cmap <Up> <C-P>
cmap <M-Bs> <C-W>
]])
