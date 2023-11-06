-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = function(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { silent = true, desc = desc })
end

-- General
map({ "n" }, "<leader>Q", "<cmd>qa!<cr>", "Quit All")

-- Enable MacOS Word Backspace and Delete
map({ "i" }, "<M-Bs>", "<C-W>", "Alt Backspace")
map({ "i" }, "<M-Del>", "<C-O>dw", "Alt Delete")
map({ "n" }, "<S-Left>", "<C-w>h", "Move Left")
map({ "n" }, "<S-Right>", "<C-w>l", "Move Left")
map({ "n" }, "<S-Up>", "<C-w>k", "Move Up")
map({ "n" }, "<S-Down>", "<C-w>j", "Move Down")
map({ "n" }, "<leader>w<C-Up>", "<cmd>to split<cr>", "Split to Top")
map({ "n" }, "<leader>w<C-Down>", "<cmd>bo split<cr>", "Split to Bottom")
map({ "n" }, "<leader>w<C-Left>", "<cmd>to vsplit<cr>", "Split Left")
map({ "n" }, "<leader>w<C-Right>", "<cmd>bo vsplit<cr>", "Split Right")
map({ "n" }, "<leader>w<Up>", "<cmd>leftabove split<cr>", "Split Up")
map({ "n" }, "<leader>w<Down>", "<cmd>split<cr>", "Split Down")
map({ "n" }, "<leader>w<Left>", "<cmd>leftabove vsplit<cr>", "Split to Left")
map({ "n" }, "<leader>w<Right>", "<cmd>vsplit<cr>", "Split to Right")
map({ "n" }, "<leader>wO", "<cmd>only<cr>", "Only")
map({ "n" }, "<leader>wo", "<C-w>w", "Other Window")
vim.keymap.del({ "n" }, "<leader>w-")
vim.keymap.del({ "n" }, "<leader>w|")

-- Buffers
map({ "n" }, "<leader>bn", "<cmd>enew<cr>", "New")
map({ "n" }, "<leader>bo", "<cmd>bp<cr>", "Other Buffer")
map({ "n" }, "<leader>b<Left>", "<cmd>bp<cr>", "Previous Buffer")
map({ "n" }, "<leader>bh", "<cmd>bp<cr>", "Previous Buffer")
map({ "n" }, "<leader>b<Right>", "<cmd>bn<cr>", "Next Buffer")
map({ "n" }, "<leader>bl", "<cmd>bp<cr>", "Next Buffer")
map({ "n" }, "<leader>bs", "<cmd>write<cr>", "Write")

map({ "n" }, "<leader>sp", "<cmd>pwd<cr>", "PWD")

vim.cmd([[
cmap <Down> <C-N>
cmap <Up> <C-P>
cmap <M-Bs> <C-W>
]])

local M = {}
M.map = map
return M
