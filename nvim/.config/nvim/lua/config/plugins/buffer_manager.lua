return {
    'j-morano/buffer_manager.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        vim.keymap.set('n', '<Leader>b', '<Cmd>lua require("buffer_manager.ui").toggle_quick_menu()<CR>')
        -- vim.keymap.set('n', '<Leader>b', require("buffer_manager.ui").toggle_quick_menu())
    end
}
