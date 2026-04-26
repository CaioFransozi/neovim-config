return {
	vim.pack.add({
		{
			src = "https://github.com/romgrk/barbar.nvim",
			name = "barbar",
		},
		{
			src = "https://github.com/nvim-tree/nvim-web-devicons",
			name = "nvim-web-devicons",
		},
	}),

	require("barbar").setup({
		animation = false,
		tabpages = true,
		focus_on_close = "previous",
		icons = {
			dianostics = {
				[vim.diagnostic.severity.ERROR] = { enabled = true },
				[vim.diagnostic.severity.WARN] = { enabled = true },
			},
			gitsigns = {
				added = { enabled = true, icon = "+" },
				changed = { enabled = true, icon = "~" },
				deleted = { enabled = true, icon = "-" },
			},
		},
		sidebar_filetypes = {
			["neo-tree"] = { event = "BufWipeout" },
		},
	}),
}
