-- Define window state
local state = {
	floating = {
		buf = -1,
		win = -1,
	},
}

-- Define function for opening floating windows
local function open_floating(opts)
	-- If variable opts isn't given, set it as empty table
	opts = opts or {}

	-- Define math for window size
	local width = opts.width or math.floor(vim.o.columns * 0.7)
	local height = opts.height or math.floor(vim.o.lines * 0.7)

	-- Define math for window position
	local col = math.floor((vim.o.columns - width) / 2)
	local row = math.floor((vim.o.columns - height) / 20)

	-- Create empty buffer
	local buf = nil
	if vim.api.nvim_buf_is_valid(opts.buf) then
		buf = opts.buf
	else
		buf = vim.api.nvim_create_buf(false, true)
	end

	-- Define other window options
	local win_opts = {
		relative = "editor",
		width = width,
		height = height,
		col = col,
		row = row,
		border = "rounded",
	}

	local win = vim.api.nvim_open_win(buf, true, win_opts)

	return { buf = buf, win = win }
end

local term_float = function()
	if not vim.api.nvim_win_is_valid(state.floating.win) then
		state.floating = open_floating({ buf = state.floating.buf })
		if vim.bo[state.floating.buf].buftype ~= "terminal" then
			vim.cmd.terminal()
		end
	else
		vim.api.nvim_win_hide(state.floating.win)
	end
end

return {
	term_float = term_float,
}
