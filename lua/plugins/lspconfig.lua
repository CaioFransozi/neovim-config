return {
	vim.pack.add({
		{ src = "https://github.com/neovim/nvim-lspconfig", name = "lspconfig" },
	}),

	vim.lsp.config("lua_ls", {
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
			},
		},
	}),
}
