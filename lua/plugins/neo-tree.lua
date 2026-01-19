return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			{ "antosha417/nvim-lsp-file-operations", dependencies = { "nvim-lua/plenary.nvim" } },
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
		},
		opts = {
			window = {
				width = 50,
			},
			enable_git_status = true,
			enable_diagnostics = true,
			open_files_do_not_replace_types = { "terminal", "trouble", "qf", "outline" },
			close_if_last_window = true,
			default_component_configs = {
				indent = {
					indent_size = 3,
					padding = 1,
					with_markers = true,
					indent_marker = "│",
					last_indent_marker = "└",
					with_expanders = true,
					expander_collapsed = "",
					expander_expanded = "",
					expander_highlight = "NeoTreeExpander",
				},
			},
		},
	},
}
