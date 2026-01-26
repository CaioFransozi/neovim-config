return {
	{
		"nvim-neorg/neorg",
		priority = 1002,
		lazy = false,
		version = "*",
		build = ":Neorg sync-parsers",
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
						workspaces = {
							notes = "~/Notas",
						},
					},
					["core.highlights"] = {},
				},
			})
		end,
	},
}
