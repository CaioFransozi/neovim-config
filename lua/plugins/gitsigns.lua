return {
	vim.pack.add({
		{
			src = "https://github.com/lewis6991/gitsigns.nvim",
			name = "gitsigns"
		}
	}),

	require("gitsigns").setup({
		signs = {
			delete = { text = "" },
			topdelete = { text = "" },
		},
	})
}
