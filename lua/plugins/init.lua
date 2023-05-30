
local  default = {
	{
		"RRethy/nvim-base16",
		lazy = true,
	},
	{
	    'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                              , branch = '0.1.1',
	      dependencies = { 'nvim-lua/plenary.nvim' },
	      cmd = "Telescope",
		keys = {
			{ "<leader>ff", ":Telescope find_files<CR>", desc = "find files" },
			{ "<leader>fg", ":Telescope live_grep<CR>", desc = "grep file" },
			{ "<leader>fr", ":Telescope resume<CR>", desc = "resume" },
			{ "<leader>fo", ":Telescope oldfiles<CR>", desc = "oldfiles" },
		},
	},
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end,
		event = "VeryLazy",
	},
	

}

require("lazy").setup(default)
	
