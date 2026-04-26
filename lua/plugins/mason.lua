return {
	vim.pack.add({
		{ src = "https://github.com/mason-org/mason.nvim", name = "mason" },
		{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
		{ src = "https://github.com/neovim/nvim-lspconfig" },
	}),
	require("mason").setup(),
	require("mason-lspconfig").setup({
		automatic_enable = true,
	}),
}
