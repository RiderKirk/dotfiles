-- SET OPTIONS
vim.opt.clipboard = "unnamedplus"

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- line wrap
vim.opt.wrap = false

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- colors
vim.opt.termguicolors = true

-- REMAPS
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- center cursor on page up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- center cursor on search
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- move highlighted sections and auto indent when moving into block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- replace word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
