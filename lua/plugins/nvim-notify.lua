return {
	vim.pack.add({
		{ src = "https://github.com/rcarriga/nvim-notify", name = "notify" },
	}),

	function()
		vim.notify = require("notify")
	end,
}
