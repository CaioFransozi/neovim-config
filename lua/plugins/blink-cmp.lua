return {
	{
		"saghen/blink.cmp",
		build = "cargo build --release",
		dependencies = {
			"L3MON4D3/LuaSnip"
		},
		opts = {
			fuzzy = { implementation = "prefer_rust" },
			keymap = {

				preset = 'default',

				['<Up>'] = { 'select_prev', 'fallback' },
				['<Down>'] = { 'select_next', 'fallback' },

				['<cr>'] = { 'accept', 'fallback' }

			}
		}
	},
}

