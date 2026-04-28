return {
	vim.pack.add({
		{ src = "https://github.com/nvim-lualine/lualine.nvim", name = "lualine" },
	}),
	require("lualine").setup({
		icons_enabled = true,
		theme = "auto",
		extensions = {
			"fzf",
			"mason",
			"trouble",
		},
		options = {
			globalstatus = true,
		},
	}),
}
