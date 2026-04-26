return {
	vim.pack.add({
		{ src = "https://github.com/oxfist/night-owl.nvim", name = "night-owl" },
	}),

	require("night-owl").setup(),
}
