return {
	vim.pack.add({
		{ src = "https://github.com/stevearc/conform.nvim", name = "conform"},
	}),

	require("conform").setup({
		formatters_by_ft = {
			lua = { "stylua" },
			cpp = { "clang-format" },
			c = { "clang-format" },
			html = { "prettier" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			css = { "prettier" },
			nix = { "nixfmt" }
		}
	}),
}
