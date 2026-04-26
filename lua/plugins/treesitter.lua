return {
	vim.pack.add({
		{
			src = "https://github.com/nvim-treesitter/nvim-treesitter",
			name = "treesitter",
		},
	}),

	require("nvim-treesitter").setup()
}
