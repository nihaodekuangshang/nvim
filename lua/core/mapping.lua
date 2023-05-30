
-- keybinding
vim.g.mapleader = " "
local arg = {noremap = true,silent = true}
vim.keymap.set("n","<leader>wv","<C-w>v",arg)
vim.keymap.set("n","<leader>ws","<C-w>s",arg)
vim.keymap.set("n","<leader>wl","<C-w>l",arg)
vim.keymap.set("n","<leader>wh","<C-w>h",arg)
vim.keymap.set("n","<leader>wj","<C-w>j",arg)
vim.keymap.set("n","<leader>wk","<C-w>k",arg)

-- 可视行跳转
 
vim.keymap.set("n","j",[[v:count ? 'j':'gj']],{noremap = true, expr = true})
vim.keymap.set("n","k",[[v:count ? 'k':'gk']],{noremap = true, expr = true})
