return {
	{
		"saghen/blink.cmp",
		build = "cargo build --release",
		ft = { "cpp", "lua" },
		dependencies = {
			{
				"L3MON4D3/LuaSnip",
				build = "make install_jsregexp",
				opts = {},
			},
		},
		opts = {
			snippets = { preset = "luasnip" },
			fuzzy = { implementation = "prefer_rust" },
			keymap = {

				preset = "default",

				["<Up>"] = { "select_prev", "fallback" },
				["<Down>"] = { "select_next", "fallback" },

				["<cr>"] = { "accept", "fallback" },
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
		},
	},
}
