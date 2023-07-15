
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
		event = "VeryLazy",
	},
	{
		"williamboman/mason-lspconfig.nvim",
	},
	{
		"neovim/nvim-lspconfig",
		event = "VeryLazy",
	},
	{ 'neovim/nvim-lspconfig', },
	{ 'hrsh7th/cmp-nvim-lsp', },
	{ 'hrsh7th/cmp-buffer', },
	{ 'hrsh7th/cmp-path', },
	{ 'hrsh7th/cmp-cmdline', },
	{ 'hrsh7th/nvim-cmp', },
	-- For vsnip users.
	{ 'hrsh7th/cmp-vsnip', },
	{ 'hrsh7th/vim-vsnip', },
	{ 'rafamadriz/friendly-snippets', },
	-- lspkind
	{ 'onsails/lspkind-nvim',},

	-- For luasnip users.
	-- Plug 'L3MON4D3/LuaSnip'
	-- Plug 'saadparwaiz1/cmp_luasnip'

	-- For ultisnips users.
	-- Plug 'SirVer/ultisnips'
	-- Plug 'quangnguyen30192/cmp-nvim-ultisnips'

	-- For snippy users.
	-- Plug 'dcampos/nvim-snippy'
	-- Plug 'dcampos/cmp-snippy'
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
			{"<leader>tt","<cmd>NvimTreeToggle<CR>",desc = "open nvim-tree toggle"},
		},
	},
	{
		"rust-lang/rust.vim",
		ft = "rust",
		init = function ()
			vim.g.rustfmt_autosave = 1
		end
	},

}

require("lazy").setup(default)
require("mason").setup()
require("mason-lspconfig").setup()
require("plugins/configs/lspconfig")
require("plugins/configs/nvm-cmp")
