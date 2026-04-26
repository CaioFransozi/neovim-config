return {
	vim.pack.add({
		{ src = "https://github.com/hrsh7th/nvim-cmp", name = "cmp" },
		{ src = "https://github.com/hrsh7th/cmp-cmdline" },
		{ src = "https://github.com/saadparwaiz1/cmp_luasnip" },
		{ src = "https://github.com/hrsh7th/cmp-buffer" },
		{ src = "https://github.com/hrsh7th/cmp-path" },
		{ src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
		{ src = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help" },
		{ src = "https://github.com/L3MON4D3/LuaSnip" },
	}),

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
	}),

	require("cmp").setup.cmdline({ "/", "?" }, {
		mapping = require("cmp").mapping.preset.cmdline(),
		sources = {
			{ name = "buffer" },
		},
	}),

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
	}),
}
