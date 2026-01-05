return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		priority = 1001,
		config = function()
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" } }
					}
				}
			})
		end
	},

}
