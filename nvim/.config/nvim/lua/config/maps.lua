vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('i', 'jk', '<esc>')
-- vim.keymap.set('i', 'nn', '<esc>')

vim.keymap.set('n', '<C-h>', vim.cmd.tabprev)
vim.keymap.set('n', '<C-l>', vim.cmd.tabnext)
vim.keymap.set('n', '<C-n>', vim.cmd.tabnew)
