return { 
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require'nvim-treesitter'.install { 'rust', 'lua', 'cpp' }
		end
	},
}
