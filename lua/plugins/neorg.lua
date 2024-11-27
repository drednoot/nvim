return {
	"nvim-neorg/neorg",
	lazy = false,
	version = "*",
	config = function()
		require("neorg").setup {
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {
					config = {
						icons = {
							todo = {
								done = {
									icon = "✓",
								},
								on_hold = {
									icon = "H",
								},
								pending = {
									icon = "┘",
								},
								urgent = {
									icon = "!",
								},
							},
						},
					},
				},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "C:\\Users\\anton_shastin\\neorg",
						},
						default_workspace = "notes",
					},
				},
			},
		}

		vim.wo.foldlevel = 99
		vim.wo.conceallevel = 2
	end,
}
