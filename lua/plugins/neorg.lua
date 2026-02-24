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
						config = { -- We added a `config` table!
							icon_preset = "varied", -- And we set our option here.
						},
					}, -- We added this line!
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
				},
			})
		end,
	},
}
