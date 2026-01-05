local map = vim.keymap.set
vim.g.mapleader = ' '

-- Define which key keymap groups and icons
require("which-key").add({
	{ '<leader>f', group = 'Telescope' },
	{ '<leader>d', group = 'Diagnostics' },
	{ '<leader>w', group = 'Windows' },
	{ '<leader>h', icon = '' },
	{ '<leader>b', group = 'Buffers' },
	{ '<leader>t', group = 'Terminal' },
})

-- Define function for opening floating windows
local function open_floating(relative_size)

	-- Create empty buffer
	local buf = vim.api.nvim_create_buf(false, true)

	-- Define math for window size
	local width = math.floor(vim.o.columns * (relative_size / 10))
	local height = math.floor(vim.o.lines * (relative_size / 10))

	-- Define math for window position
	local col = math.floor((vim.o.columns - width) / 2)
	local row = math.floor((vim.o.columns - height) / 2)

	-- Define other window options
	local opts = {
		relative = 'editor',
		width = width,
		height = height,
		col = col,
		row = row,
		border = 'rounded'
	}

	vim.api.nvim_open_win(buf, true, opts)
end

-- Diagnostics
map('n', '<leader>dn', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
map('n', '<leader>db', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
map('n', '<leader>de', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Show diagnostic error messages' })
map('n', '<leader>df', '<cmd>Trouble qflist toggle<cr>', { desc = 'Show diagnostic quickfixes' })

-- Buffers
map('n', '<leader>bc', '<cmd>BufferClose<cr>', { desc = "Close current buffer" })
map('n', '<leader>bn', '<cmd>BufferNext<cr>', { desc = "Move to the next buffer" })
map('n', '<leader>bb', '<cmd>BufferPrevious<cr>', { desc = "Move to the previous buffer" })
map('n', '<leader>bp', '<cmd>BufferPin<cr>', { desc = "Pin current buffer" })
map('n', '<leader>bl', '<cmd>BufferMoveNext<cr>', { desc = "Move current buffer to the right" })
map('n', '<leader>bh', '<cmd>BufferMovePrevious<cr>', { desc = "Move current buffer to the left" })
map('n', '<leader>bd', '<cmd>BufferPick<cr>', { desc = "Toggle buffer pick mode" })

-- Neo-Tree
map('n', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = 'Open Neo-Tree file browser' })

-- Outline
map('n', '<leader>o', '<cmd>Outline<CR>', { desc = 'Open outline viewer' })

-- Telescope
map('n', '<leader>ff', require("telescope.builtin").find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', require("telescope.builtin").live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', require("telescope.builtin").buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', require("telescope.builtin").help_tags, { desc = 'Telescope help tags' })

-- Terminal
map('n', '<leader>tn', function()
	vim.cmd('botright new')
	vim.cmd.terminal()
	vim.api.nvim_win_set_height(0, 15)
end, { desc = 'Open new terminal' })
map('n', '<leader>tt', function()
	open_floating(7)
	vim.cmd.terminal()
end, { desc = 'Open floating terminal' })
map('t', '<Esc>', '<C-\\><C-n>', { desc = 'Change terminal to normal mode' })

-- Windows
map('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
map('n', '<C-j>', '<C-w>j', { desc = 'Move to window below' })
map('n', '<C-k>', '<C-w>k', { desc = 'Move to window above' })
map('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })
map('n', '<leader>wn', '<C-w>s', { desc = 'Open window' })
map('n', '<leader>wc', '<C-w>c', { desc = 'Close active window' })
map('n', '<leader>w.', '<C-w>-', { desc = 'Increase window height' })
map('n', '<leader>w,', '<C-w>+', { desc = 'Decrease window height' })
map('n', '<leader>w>', '<C-w>>', { desc = 'Increase window width' })
map('n', '<leader>w<', '<C-w><', { desc = 'Decrease window width' })

-- Formatting
map('n', '<leader>c', vim.lsp.buf.format, { desc = 'Format current buffer' })
