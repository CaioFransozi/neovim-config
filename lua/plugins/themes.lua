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
		config = function()
			vim.cmd([[colorscheme teide-dimmed]])
		end,
	},
}
