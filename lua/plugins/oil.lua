return {
	"stevearc/oil.nvim",

	lazy = false,

	keys = {
		{
			"<c-t>",
			"<cmd>Oil<cr>",
			desc = "Open oil",
		},
	},

	config = function()
		require('oil').setup({
			watch_for_changes = true,
		})
	end,

	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
}
