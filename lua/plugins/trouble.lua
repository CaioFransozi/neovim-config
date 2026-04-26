return {
	vim.pack.add({
		{
			src = "https://github.com/folke/trouble.nvim",
			name = "trouble",
		},
		{
			src = "https://github.com/nvim-tree/nvim-web-devicons",
			name = "nvim-web-devicons",
		},
	}),

	require("trouble").setup();
}
