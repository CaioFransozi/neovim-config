return {
	vim.pack.add({
		{ src = "https://github.com/nvim-telescope/telescope.nvim", name = "telescope" },
		"https://github.com/nvim-lua/plenary.nvim",
		"https://github.com/cljoly/telescope-repo.nvim"
	}),

	require("telescope").setup({}),
	require("telescope").load_extension("repo"),
}
