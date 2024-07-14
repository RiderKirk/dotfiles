-- MINI
local path_package = vim.fn.stdpath('data') .. '/site/'
local mini_path = path_package .. 'pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then
    vim.cmd('echo "Installing `mini.nvim`" | redraw')
    local clone_cmd = {
        'git', 'clone', '--filter=blob:none',
        'https://github.com/echasnovski/mini.nvim', mini_path
    }
    vim.fn.system(clone_cmd)
    vim.cmd('packadd mini.nvim | helptags ALL')
    vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

require('mini.deps').setup({ path = { package = path_package } })
require('mini.ai').setup()
require('mini.surround').setup()
require('mini.files').setup()

-- PLUGINS
local add = MiniDeps.add

add({
    source = 'neovim/nvim-lspconfig',
    depends = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim'
    }
})

add({
    source = 'nvim-treesitter/nvim-treesitter'
})

-- SETUP
require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "vimdoc",
        "luadoc",
        "vim",
        "lua",
        "markdown"
    },
    highlight = { enable = true },
    indent = { enable = true }
})

require('mason').setup()
require('mason-lspconfig').setup()
require('lspconfig').lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                disable = { "lowercase-global", "undefined-global" }
            },
        }
    }
}

-- SETTINGS
vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.mouse = 'a'

vim.opt.hlsearch = false

vim.opt.wrap = false

-- KEYMAPS
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set('n', '<leader>e', ':lua MiniFiles.open()<CR>', {noremap = true})

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
