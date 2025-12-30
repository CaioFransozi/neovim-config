return { 
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		opts = {
			servers = {
				lua_ls = {
					enabled = true,
					mason = false,
				},
			}
		},
		config = function()
			vim.lsp.enable("lua_ls")
		end,
	},
}
