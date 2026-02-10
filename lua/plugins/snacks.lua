return {
	{
		"folke/snacks.nvim",
		dependencies = { "nvim-mini/mini.icons" },
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			dashboard = { enabled = true, example = "compact_files" },
			explorer = { enabled = true },
			quickfile = { enabled = true },
			image = { enabled = true },
			words = { enabled = true },
			statuscolumn = { enabled = true },
			picker = { enabled = true }
		}
	}
}
