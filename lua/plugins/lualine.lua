return {
	'nvim-lualine/lualine.nvim',
	name = 'lualine',
  enabled = false,
	
	opts = {
		sections = {
			lualine_x = {'filetype'},
		},
		options = {
			theme = 'auto',
		},
	},

	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
}
