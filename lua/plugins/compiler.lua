return {
	{
		"Zeioth/compiler.nvim",
		lazy = true,
		cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
		keys = {
			{
				"<leader>ro",
				"<cmd>CompilerOpen<cr>",
				desc = "Open compiler menu",
			},
			{
				"<leader>rt",
				"<cmd>CompilerToggleResults<cr>",
				desc = "Toggle compiler results",
			},
			{
				"<leader>rr",
				"<cmd>CompilerRedo<cr>",
				desc = "Redo compiler action",
			},
		},
		dependencies = { {
			"stevearc/overseer.nvim",
			opts = {
				task_list = {
					direction = "bottom",
					min_height = 25,
					max_height = 25,
					default_detail = 1,
				},
			},
		} },
		opts = {},
	},
}
