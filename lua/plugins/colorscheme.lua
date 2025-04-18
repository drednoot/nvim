return {
  "Shatur/neovim-ayu",
	-- "catppuccin/nvim",

  lazy = false,
  priority = 1000,

  -- CATPPUCCIN 
	-- name = "catppuccin",
	-- opts = {
	-- 	flavour = "mocha",
	-- 	no_italic = false,
	-- 	no_bold = false,
	-- 	no_underline = false,
	-- 	styles = {
	-- 		comments = { "italic" },
	-- 	},
	-- 	integrations = {
	-- 		treesitter = true,
	-- 	},
	-- },
	-- config = function()
	-- 	vim.cmd.colorscheme "catppuccin"
	-- end,
  
  -- AYU
  opts = {
    theme = 'ayu',
  },
  config = function()
    vim.cmd.colorscheme "ayu"
  end,

  -- DESERT
  -- config = function()
  --   vim.cmd.colorscheme "desert"
  -- end,
}
