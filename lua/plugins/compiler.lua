return {
	vim.pack.add({
		{ src = "https://github.com/Zeioth/compiler.nvim", name = "compiler" },
		"https://github.com/stevearc/overseer.nvim",
		"https://github.com/nvim-telescope/telescope.nvim",
	}),

	require("overseer").setup({}),
	require("compiler").setup({}),
}
