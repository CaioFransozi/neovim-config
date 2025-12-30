return {
	{
		"mason-org/mason-lspconfig.nvim",
		lazy = false,
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = { automatic_enable = true },
	},

	{
		"mason-org/mason.nvim",
		opts = {}
	}
}
