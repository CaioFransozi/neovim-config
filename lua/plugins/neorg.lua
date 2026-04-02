return {
	{
		"nvim-neorg/neorg",
		priority = 1002,
		lazy = false,
		version = "*",
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {},
					["core.concealer"] = {
						config = {
							icon_preset = "varied",
						},
					},
					["core.keybinds"] = {
						config = {
							default_keybinds = true,
						},
					},
					["core.dirman"] = {
						config = {
							workspaces = {
								notes = "~/Notas",
								cpp = "~/Notas/C++/",
								univates = "~/Notas/Univates/",
								electronics = "~/Notas/teach-yourself-electricity-and-electronics/",
							},
						},
					},
					["core.highlights"] = {},
					["core.export"] = {},
				},
			})
		end,
	},
}
