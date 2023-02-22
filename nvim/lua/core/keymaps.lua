vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.background = "dark"

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
-- vim.opt.cursorline = true

-- use spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- set numbers
vim.cmd([[set relativenumber]])
