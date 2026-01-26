return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		priority = 1003,
		version = "*",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
				},
			})
		end,
	},
}
