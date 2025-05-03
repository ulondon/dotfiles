return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim',
                     'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
	config = function()
	    local builtin = require('telescope.builtin')
	    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
	    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	    vim.keymap.set('n', '<leader>fp', function() builtin.find_files { cwd = '~/Projects' } end)

	    -- vim.keymap.set('n', '<leader>ps', function()
	    --     builtin.grep_string({ search = vim.fn.input('Grep: ')});
	    -- end)
	end
    }
