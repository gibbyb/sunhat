local builtin = require('telescope.builtin')

return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },
		cmd = 'Telescope',
		opts = {
			defaults = {
				file_ignore_patterns = {"node_modules", ".git", ".cache", ".DS_Store", "Steam", "Media", "Pictures", "Downloads", "Videos", "Music", ".venv", ".conda", "School"},
			},
		},
		keys = {
			{
				'<leader>ff', builtin.find_files, mode = { 'n'}, desc = 'Find files'
			},
			{
				'<leader>fg', builtin.git_files, mode = { 'n'}, desc = 'Find files'
			},
			{
				'<leader>fs',
				function()
					builtin.grep_string({ search = vim.fn.input("Grep > ") })
				end,
				mode = { 'n'},
				desc = 'Find files'
			},
		},
	},
}
