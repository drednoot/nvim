return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },

	keys = {
		{
			"<c-f>",
			function()
				require('telescope.builtin').find_files()
			end,
			noremap = true,
			silent = true,
		},
	},
}
