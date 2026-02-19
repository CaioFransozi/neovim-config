return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lsp-signature-help",
			{
				"L3MON4D3/LuaSnip",
				build = "make install_jsregexp",
				opts = {},
			},
		},
		lazy = false,
		config = function()
			require("cmp").setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = require("cmp").config.window.bordered(),
					documentation = require("cmp").config.window.bordered(),
				},
				mapping = require("cmp").mapping.preset.insert({
					["<C-b>"] = require("cmp").mapping.scroll_docs(-4),
					["<C-f>"] = require("cmp").mapping.scroll_docs(4),
					["<C-Space>"] = require("cmp").mapping.complete(),
					["<C-e>"] = require("cmp").mapping.abort(),
					["<CR>"] = require("cmp").mapping.confirm({ select = true }),
				}),
				sources = require("cmp").config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer" },
					{ name = "path" },
					{ name = "nvim_lsp_signature_help" },
				}),
			})
			require("cmp").setup.cmdline({ "/", "?" }, {
				mapping = require("cmp").mapping.preset.cmdline(),
				sources = {
					{ name = "buffer" },
				},
			})
			require("cmp").setup.cmdline(":", {
				mapping = require("cmp").mapping.preset.cmdline(),
				sources = require("cmp").config.sources({
					{ name = "path" },
				}, {
					{
						name = "cmdline",
						option = {
							ignore_cmds = { "Man", "!" },
						},
					},
				}),
			})
		end,
	},
}
