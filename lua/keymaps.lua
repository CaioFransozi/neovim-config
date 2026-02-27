local map = vim.keymap.set
local Snacks = require("snacks")
vim.g.mapleader = " "

local function dapRestart()
	vim.cmd("DapTerminate")
	vim.cmd("DapNew")
end

-- Define which key keymap groups and icons
require("which-key").add({
	{ "<leader>f", group = "Picker", icon = "" },
	{ "<leader>d", group = "Diagnostics" },
	{ "<leader>w", group = "Windows" },
	{ "<leader>b", group = "Buffers" },
	{ "<leader>t", group = "Terminal" },
	{ "<leader>o", icon = "󰍜" },
	{ "<leader>r", group = "Compiler actions" },
})

local function new_term()
	vim.cmd("botright new")
	vim.cmd.terminal()
	vim.api.nvim_win_set_height(0, 12)
end

local function new_floating_term()
	-- Detect if window is floating or standard
	if vim.fn.win_gettype() == "popup" then
		require("floating-terminal").term_float()
	else
		local key = vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true)
		vim.api.nvim_feedkeys(key, "t", false)
	end
end

-- Diagnostics
map("n", "<leader>dn", "<cmd>DapNew<cr>", { desc = "Start debug session" })
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "Toggle breakpoint in current line" })
map("n", "<leader>dc", "<cmd>DapContinue<cr>", { desc = "Continue debug session" })
map("n", "<leader>de", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Show diagnostic error messages" })
map("n", "<leader>df", "<cmd>Trouble qflist toggle<cr>", { desc = "Show diagnostic quickfixes" })
map("n", "<leader>dr", dapRestart, { desc = "Restart debug session" })
map("n", "<leader>dd", "<cmd>DapTerminate<cr>", { desc = "Terminate debug session" })
map("n", "<leader>do", require("dapui").toggle, { desc = "Toggle debug UI" })

-- Buffers
map("n", "<leader>bc", "<cmd>BufferClose<cr>", { desc = "Close current buffer" })
map("n", "<C-n>", "<cmd>BufferNext<cr>", { desc = "Move to the next buffer" })
map("n", "<C-b>", "<cmd>BufferPrevious<cr>", { desc = "Move to the previous buffer" })
map("n", "<leader>bp", "<cmd>BufferPick<cr>", { desc = "Open buffer picker" })
map("n", "<leader>bl", "<cmd>BufferMoveNext<cr>", { desc = "Move current buffer to the right" })
map("n", "<leader>bh", "<cmd>BufferMovePrevious<cr>", { desc = "Move current buffer to the left" })
map("n", "<leader>bd", "<cmd>BufferPick<cr>", { desc = "Toggle buffer pick mode" })

-- Explorer
map("n", "<leader>e", function()
	Snacks.explorer()
end, { desc = "Open file explorer" })

-- Picker
map("n", "<leader>ff", function()
	Snacks.picker.files()
end, { desc = "Find files" })
map("n", "<leader>fg", function()
	Snacks.picker.grep()
end, { desc = "Livegrep" })
map("n", "<leader>fp", function()
	Snacks.picker.projects()
end, { desc = "Find projects" })
map("n", "<leader>fh", function()
	Snacks.picker.help()
end, { desc = "Find help" })
map("n", "<leader>fb", function()
	Snacks.picker.buffers()
end, { desc = "Find buffers" })

-- Terminal
map("n", "<leader>tn", new_term, { desc = "Open new terminal" })
map("n", "<leader>tt", require("floating-terminal").term_float, { desc = "Open floating terminal" })
map("t", "<Esc><Esc>", new_floating_term, { desc = "Close floating terminal" })

-- Windows
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to window below" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to window above" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
map("n", "<leader>wn", "<C-w>s", { desc = "Open window" })
map("n", "<leader>wc", "<C-w>c", { desc = "Close active window" })
map("n", "<leader>w,", "<C-w>-", { desc = "Increase window height" })
map("n", "<leader>w.", "<C-w>+", { desc = "Decrease window height" })
map("n", "<leader>w>", "<C-w>>", { desc = "Increase window width" })
map("n", "<leader>w<", "<C-w><", { desc = "Decrease window width" })

-- Formatting
map("n", "<leader>c", vim.lsp.buf.format, { desc = "Format current buffer" })
