return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		highlight = { enable = true },
		ensure_installed = { "cpp", "norg", "lua", "python" },
	},

	config = function(_, opts)
		require("nvim-treesitter.install").compilers = { "zig" }
		require("nvim-treesitter.configs").setup(opts)
	end,
}
