return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		priority = 1001,
	},
	vim.lsp.enable("lua_ls"),
	vim.lsp.enable("clangd"),
	vim.lsp.enable("rust_analyzer"),
}
