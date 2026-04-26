require("plugins/index")
require("floating-terminal")
require("themes/night-owl")
require("keymaps")

-- Set mapleaders
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Set visual options
vim.opt.termguicolors = true
vim.wo.relativenumber = true
vim.wo.number = true
vim.o.cursorline = true
vim.opt.fillchars = {eob = " "}
vim.opt.conceallevel = 3
vim.opt.laststatus = 3

-- Highlight post yank function
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", {}),
	desc = "Hightlight selection on yank",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
	end,
})

-- Set diagnostic icons
vim.diagnostic.config({
	virtual_text = {
		source = true,
		hl_mode = "replace",
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "",
			[vim.diagnostic.severity.HINT] = "",
		},
	},
})

-- Start terminal in insert mode
vim.api.nvim_create_autocmd({ "TermOpen", "WinEnter", "BufWinEnter" }, {
	group = vim.api.nvim_create_augroup("terminal_buffer_change", {}),
	desc = "Change mode to insert when opening terminal buffer",
	pattern = "term://*",
	command = "startinsert",
})

-- Set clipboard provider
vim.opt.clipboard = "unnamedplus"

-- Disable search highlight
vim.o.hlsearch = false

-- Select theme
vim.cmd("colorscheme night-owl")
