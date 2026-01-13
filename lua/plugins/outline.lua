return {
	{
		"hedyhli/outline.nvim",
		opts = {
			outline_window = {
				position = "right",
				width = 25,
				relative_width = true,
				auto_close = false,
				auto_jump = false,
				jump_highlight_duration = 500,
				show_numbers = false,
				show_relative_numbers = false,
				wrap = false,
				focus_on_open = true,
			},
			guides = {
				enabled = true,
				markers = {
					bottom = "└",
					middle = "├",
					vertical = "│",
				},
			},
			preview_window = {
				auto_preview = true,
				open_hover_on_preview = false,
				width = 50,
				min_width = 50,
				relative_width = true,
				height = 50,
				min_height = 10,
				relative_height = true,
				border = "single",
				winhl = "NormalFloat:",
				winblend = 0,
				live = false,
			},
		},
	},
}
