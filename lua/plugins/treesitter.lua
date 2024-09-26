return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		highlight = { enable = true },
	},

	config = function(_, opts)
		require("nvim-treesitter.install").compilers = { "C:\\Program Files\\LLVM\\bin\\clang.exe" }
		require("nvim-treesitter.configs").setup(opts)
	end,
}
