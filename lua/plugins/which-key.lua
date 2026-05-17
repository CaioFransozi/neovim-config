return {
	vim.pack.add({
		{
			src = "https://github.com/folke/which-key.nvim",
			name = "which-key",
		},
		"https://github.com/nvim-mini/mini.icons",
	}),

	require("which-key").setup({}),
}
