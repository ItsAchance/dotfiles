vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.opt.guicursor = ""
-- vim.opt.guicursor = vim.opt.guicursor + "a:blinkon1"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "g;", "g;zz")
vim.opt.winborder = "rounded"
