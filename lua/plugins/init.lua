
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
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		event = "VeryLazy",
	},
	{
		"akinsho/bufferline.nvim",
		dependencies = "kyazdani42/nvim-web-devicons",
		config = function()
			require("plugins.configs.bufferline")
		end,
	},
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = "kyazdani42/nvim-web-devicons",
		config = function()
			require("plugins.configs.nvim-tree")
		end,
		keys = {
			{"<leader>tt",":NvimTreeToggle<CR>",desc = "open nvim-tree toggle"},
		},
	},
	

}

require("lazy").setup(default)
	
