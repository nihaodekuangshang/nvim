
local Terminal  = require('toggleterm.terminal').Terminal


		local opt = require("toggleterm").setup({
			open_mapping = [[<leader>te]],
			-- 默认插入模式
			start_in_insert = true,
			-- 在下方打开终端
			direction = 'horizontal',
		})

vim.api.nvim_set_keymap("t","<ESC>","<C-\\><C-n>",{noremap = true,silent = true,desc = "在该终端中返回到普通模式"})


--终端到窗口
vim.api.nvim_set_keymap("t","<leader>th","<cmd> wincmd h<CR>",{noremap = true,silent = true})
vim.api.nvim_set_keymap("t","<leader>tl","<cmd> wincmd l<CR>",{noremap = true,silent = true})
vim.api.nvim_set_keymap("t","<leader>tj","<cmd> wincmd j<CR>",{noremap = true,silent = true})
vim.api.nvim_set_keymap("t","<leader>tk","<cmd> wincmd k<CR>",{noremap = true,silent = true})
--窗口到终端
vim.keymap.set("n","<leader>th","<cmd> wincmd h<CR>",{noremap = true,silent = true})
vim.keymap.set("n","<leader>tl","<cmd> wincmd l<CR>",{noremap = true,silent = true})
vim.keymap.set("n","<leader>tj","<cmd> wincmd j<CR>",{noremap = true,silent = true})
vim.keymap.set("n","<leader>tk","<cmd> wincmd k<CR>",{noremap = true,silent = true})


vim.api.nvim_set_keymap("t","<leader>td","<cmd> bd!<CR>",{noremap = true,silent = true,desc = "关闭终端"})

vim.api.nvim_set_keymap("t","<leader>1","<cmd> wincmd k<CR><cmd>BufferLineGoToBuffer 1<CR><cmd> wincmd j<CR>",
								{noremap = true,silent = true,desc = "跳转到第一个窗口"})
vim.api.nvim_set_keymap("t","<leader>2","<cmd> wincmd k<CR><cmd>BufferLineGoToBuffer 2<CR><cmd> wincmd j<CR>",
								{noremap = true,silent = true,desc = "跳转到第二个窗口"})
vim.api.nvim_set_keymap("t","<leader>3","<cmd> wincmd k<CR><cmd>BufferLineGoToBuffer 3<CR><cmd> wincmd j<CR>",
								{noremap = true,silent = true,desc = "跳转到第三个窗口"})
vim.api.nvim_set_keymap("t","<leader>4","<cmd> wincmd k<CR><cmd>BufferLineGoToBuffer 4<CR><cmd> wincmd j<CR>",
								{noremap = true,silent = true,desc = "跳转到第四个窗口"})
vim.api.nvim_set_keymap("t","<leader>5","<cmd> wincmd k<CR><cmd>BufferLineGoToBuffer 5<CR><cmd> wincmd j<CR>",
								{noremap = true,silent = true,desc = "跳转到第五个窗口"})
vim.api.nvim_set_keymap("t","<leader>6","<cmd> wincmd k<CR><cmd>BufferLineGoToBuffer 6<CR><cmd> wincmd j<CR>",
								{noremap = true,silent = true,desc = "跳转到第六个窗口"})
vim.api.nvim_set_keymap("t","<leader>7","<cmd> wincmd k<CR><cmd>BufferLineGoToBuffer 7<CR><cmd> wincmd j<CR>",
								{noremap = true,silent = true,desc = "跳转到第七个窗口"})
vim.api.nvim_set_keymap("t","<leader>8","<cmd> wincmd k<CR><cmd>BufferLineGoToBuffer 8<CR><cmd> wincmd j<CR>",
								{noremap = true,silent = true,desc = "跳转到第八个窗口"})
vim.api.nvim_set_keymap("t","<leader>9","<cmd> wincmd k<CR><cmd>BufferLineGoToBuffer 9<CR><cmd> wincmd j<CR>",
								{noremap = true,silent = true,desc = "跳转到第九个窗口"})
