return {
    'j-morano/buffer_manager.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        vim.keymap.set('n', '<Leader>b', '<Cmd>lua require("buffer_manager.ui").toggle_quick_menu()<CR>')
        -- vim.keymap.set('n', '<Leader>b', require("buffer_manager.ui").toggle_quick_menu())
        require("buffer_manager").setup({
            width = 120,
            height = 15,
            short_file_names = true
            -- short_term_names = true
            -- highlight = 'Normal:CursorLine',
            -- win_extra_options = {
            --     winhighlight = 'Normal:CursorLine',
            -- }
        })
    end
}
