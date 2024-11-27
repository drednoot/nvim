return {
	'folke/trouble.nvim',

	opts = {},
	cmd = "Trouble",
	keys = {
		{
			'<localleader>ge',
			'<cmd>Trouble diagnostics toggle<cr>',
			noremap = true,
			silent = true,
		},
	},
}
