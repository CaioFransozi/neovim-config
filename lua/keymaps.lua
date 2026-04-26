local map = vim.keymap.set
vim.g.mapleader = " "

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
map("n", "<leader>de", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Show diagnostic error messages" })
map("n", "<leader>df", "<cmd>Trouble qflist toggle<cr>", { desc = "Show diagnostic quickfixes" })

-- Buffers
map("n", "<leader>bc", "<cmd>BufferClose<cr>", { desc = "Close current buffer" })
map("n", "<C-n>", "<cmd>BufferNext<cr>", { desc = "Move to the next buffer" })
map("n", "<C-b>", "<cmd>BufferPrevious<cr>", { desc = "Move to the previous buffer" })
map("n", "<leader>bp", "<cmd>BufferPick<cr>", { desc = "Open buffer picker" })
map("n", "<leader>bl", "<cmd>BufferMoveNext<cr>", { desc = "Move current buffer to the right" })
map("n", "<leader>bh", "<cmd>BufferMovePrevious<cr>", { desc = "Move current buffer to the left" })
map("n", "<leader>bd", "<cmd>BufferPick<cr>", { desc = "Toggle buffer pick mode" })

-- Explorer
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Open file explorer" })

-- Outline
map("n", "<leader>o", "<cmd>Outline<cr>", { desc = "Open outline viewer" })

-- Telescope
map("n", "<leader>fr", function()
	require("telescope").extensions.repo.list()
end, { desc = "Telescope repositories" })
map("n", "<leader>ff", function()
	require("telescope.builtin").find_files()
end, { desc = "Telescope find files" })
map("n", "<leader>fg", function()
	require("telescope.builtin").live_grep()
end, { desc = "Telescope live grep" })
map("n", "<leader>fb", function()
	require("telescope.builtin").buffers()
end, { desc = "Telescope buffers" })
map("n", "<leader>fh", function()
	require("telescope.builtin").help_tags()
end, { desc = "Telescope help tags" })

-- Flash
map("n", "s", function()
	require("flash").jump()
end, { desc = "Flash" })

-- Compiler
map("n", "<leader>rr", "<cmd>CompilerOpen<cr>" , { desc = "Open compiler UI" })
map("n", "<leader>ro", "<cmd>CompilerToggleResults<cr>", { desc = "Toggle compiler results" })

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
