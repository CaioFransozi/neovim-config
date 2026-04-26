return {
	vim.pack.add({
		{
			src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
			version = vim.version.range("3"),
			name = "neo-tree",
		},
		-- dependencies
		"https://github.com/nvim-lua/plenary.nvim",
		"https://github.com/MunifTanjim/nui.nvim",
		"https://github.com/nvim-tree/nvim-web-devicons",
	}),

	require("neo-tree").setup({
		filesystem = {
			filtered_items = {
				visible = true,
			},
		},
		close_if_last_window = true,
	}),
}
