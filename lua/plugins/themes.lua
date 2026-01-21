return {
	{
		"Mofiqul/vscode.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"serhez/teide.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"oxfist/night-owl.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("night-owl").setup()
			vim.cmd("colorscheme night-owl")
		end
	}
}
