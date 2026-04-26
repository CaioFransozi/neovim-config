return {
	vim.pack.add({
		{ src = "https://github.com/hedyhli/outline.nvim", name = "outline" },
	}),

	require("outline").setup({
		outline_window = {
			jump_highlight_duration = 500,
		},
		preview_window = {
			auto_preview = true,
		},
	}),
}
