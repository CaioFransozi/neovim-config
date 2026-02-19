return {
	{
		"folke/snacks.nvim",
		dependencies = { "nvim-mini/mini.icons" },
		priority = 1040,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			dashboard = { enabled = true, example = "compact_files" },
			explorer = { enabled = true },
			quickfile = { enabled = true },
			image = { enabled = true },
			words = { enabled = true },
			statuscolumn = { enabled = true },
			picker = {
				enabled = true,
				sources = {
					explorer = {
						hidden = true,
						ignored = true,
					},
					files = {
						hidden = true,
						ignored = true,
					},
				},
			},
		},
	},
}
