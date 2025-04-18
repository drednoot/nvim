return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },

	keys = {
		{
			"<localleader>ff",
			function()
				require('telescope.builtin').find_files()
			end,
			noremap = true,
			silent = true,
		},
		{
			"<localleader>fl",
			function()
				require('telescope.builtin').live_grep()
			end,
			noremap = true,
			silent = true,
		},
	},
}
