return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
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
				["snacks_layout_box"] = { event = "BufWipeout" },
			},
		},
	},
}
