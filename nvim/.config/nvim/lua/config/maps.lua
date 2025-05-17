-- no mouse allowed (sensitive touchpad)
vim.keymap.set("", "<up>", "<nop>", { noremap = true })
vim.keymap.set("", "<down>", "<nop>", { noremap = true })
vim.keymap.set("i", "<up>", "<nop>", { noremap = true })
vim.keymap.set("i", "<down>", "<nop>", { noremap = true })
vim.opt.mouse = ""
vim.opt.mousescroll = "ver:0,hor:0"

vim.keymap.set('n', '<C-h>', vim.cmd.tabprev)
vim.keymap.set('n', '<C-l>', vim.cmd.tabnext)
vim.keymap.set('n', '<C-n>', vim.cmd.tabnew)
vim.keymap.set('n', '<C-k>', vim.cmd.tabclose)

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('i', 'jk', '<esc>')
-- vim.keymap.set('i', 'nn', '<esc>')
-- vim.keymap.set('t', 'jk', '<C-\><C-n>')

vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>u', '0vg_"+y')

vim.keymap.set('n', '<leader>q', ':%bd<CR>:q<CR>')

vim.keymap.set('n', ',cs', ':let @"=expand("%")<CR>')
vim.keymap.set('n', ',cl', ':let @"=expand("%:p")<CR>')

vim.keymap.set('n', '<space>x', ':.lua<CR>')
vim.keymap.set('v', '<space>x', ':lua<CR>')

require('config.lf_map')


utils = require('config.utils')
vim.keymap.set('n', '<space>n', function() utils.opttoggle('relativenumber') end)

