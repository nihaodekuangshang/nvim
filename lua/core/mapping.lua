
-- keybinding
vim.g.mapleader = " "
local arg = {noremap = true,silent = true}
-- 分屏操作
vim.keymap.set("n","<leader>wv","<C-w>v",arg)
vim.keymap.set("n","<leader>ws","<C-w>s",arg)
vim.keymap.set("n","<leader>wl","<C-w>l",arg)
vim.keymap.set("n","<leader>wh","<C-w>h",arg)
vim.keymap.set("n","<leader>wj","<C-w>j",arg)
vim.keymap.set("n","<leader>wk","<C-w>k",arg)
vim.keymap.set("n","<leader>q","<cmd>q<CR>",arg)

-- 可视行跳转
 
vim.keymap.set("n","j",[[v:count ? 'j':'gj']],{noremap = true, expr = true})
vim.keymap.set("n","k",[[v:count ? 'k':'gk']],{noremap = true, expr = true})

-- buuferline

vim.keymap.set("n","<leader>bh","<cmd>BufferLineCyclePrev<CR>",{noremap = true,desc = "返回上一个窗口"})
vim.keymap.set("n","<leader>bl","<cmd>BufferLineCycleNext<CR>",{noremap = true,desc = "返回下一个窗口"})
vim.keymap.set("n","<leader>bd","<cmd>bd<CR>",{noremap = true,desc = "关闭窗口"})
vim.keymap.set("n","<leader>1","<cmd>BufferLineGoToBuffer 1<CR>",{noremap = true,silent = true,desc = "跳转到第一个窗口"})
vim.keymap.set("n","<leader>2","<cmd>BufferLineGoToBuffer 2<CR>",{noremap = true,silent = true,desc = "跳转到第二个窗口"})
vim.keymap.set("n","<leader>3","<cmd>BufferLineGoToBuffer 3<CR>",{noremap = true,silent = true,desc = "跳转到第三个窗口"})
vim.keymap.set("n","<leader>4","<cmd>BufferLineGoToBuffer 4<CR>",{noremap = true,silent = true,desc = "跳转到第四个窗口"})
vim.keymap.set("n","<leader>5","<cmd>BufferLineGoToBuffer 5<CR>",{noremap = true,silent = true,desc = "跳转到第五个窗口"})
vim.keymap.set("n","<leader>6","<cmd>BufferLineGoToBuffer 6<CR>",{noremap = true,silent = true,desc = "跳转到第六个窗口"})
vim.keymap.set("n","<leader>7","<cmd>BufferLineGoToBuffer 7<CR>",{noremap = true,silent = true,desc = "跳转到第七个窗口"})
vim.keymap.set("n","<leader>8","<cmd>BufferLineGoToBuffer 8<CR>",{noremap = true,silent = true,desc = "跳转到第八个窗口"})
vim.keymap.set("n","<leader>9","<cmd>BufferLineGoToBuffer 9<CR>",{noremap = true,silent = true,desc = "跳转到第九个窗口"})





--rust编译运行
vim.keymap.set("n","<leader>rb","<cmd>te cargo build<CR>i<CR>",{noremap = true,desc = "编译rust"})
vim.keymap.set("n","<leader>rr","<cmd>te cargo run<CR>",{noremap = true,desc = "运行rust"})


--  显示空格和制表符
vim.opt.listchars ="tab:-->"
