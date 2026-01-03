	local map = vim.keymap.set
        vim.g.mapleader = ' '

	require("which-key").add({
	    { '<leader>f', group = 'Telescope' },
            { '<leader>d', group = 'Diagnostics' },
            { '<leader>w', group = 'Windows' },
            { '<leader>h', icon = '' },
	    { '<leader>b', group = 'Buffers' },
        })

        map('n', '<leader>dn', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
        map('n', '<leader>db', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
        map('n', '<leader>de', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Show diagnostic error messages' })
        map('n', '<leader>df', '<cmd>Trouble qflist toggle<cr>', { desc = 'Show diagnostic quickfixes' })

	map('n', '<leader>bc', '<cmd>BufferClose<cr>', { desc = "Close current buffer" })
	map('n', '<leader>bn', '<cmd>BufferNext<cr>', { desc = "Move to the next buffer" })
	map('n', '<leader>bb', '<cmd>BufferPrevious<cr>', { desc = "Move to the previous buffer" })
	map('n', '<leader>bp', '<cmd>BufferPin<cr>', { desc = "Pin current buffer" })
	map('n', '<leader>bl', '<cmd>BufferMoveNext<cr>', { desc = "Move current buffer to the right" })
	map('n', '<leader>bh', '<cmd>BufferMovePrevious<cr>', { desc = "Move current buffer to the left" })
	map('n', '<leader>bd', '<cmd>BufferPick<cr>', { desc = "Toggle buffer pick mode" })

        map('n', '<leader>h', '<cmd>Dashboard<CR>', { desc = 'Go to home dashboard' })

        map('n', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = 'Open Neo-Tree file browser' })

        map('n', '<leader>o', '<cmd>Outline<CR>', { desc = 'Open outline viewer' })

	map('n', '<leader>ff', require("telescope.builtin").find_files, { desc = 'Telescope find files' })
        map('n', '<leader>fg', require("telescope.builtin").live_grep, { desc = 'Telescope live grep' })
        map('n', '<leader>fb', require("telescope.builtin").buffers, { desc = 'Telescope buffers' })
        map('n', '<leader>fh', require("telescope.builtin").help_tags, { desc = 'Telescope help tags' })

        map('n', '<leader>t', '<cmd>terminal<CR>', { desc = 'Open terminal' })

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
