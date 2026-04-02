return {
	{
		"hedyhli/outline.nvim",
		lazy = true,
		keys = {
			{ "<leader>o", "<cmd>Outline<CR>", desc = "Open outline viewer" },
		},
		config = function()
			require("outline").setup({
				outline_window = {
					jump_highlight_duration = 500,
				},
				preview_window = {
					auto_preview = true,
				},
			})
		end,
	},
}
