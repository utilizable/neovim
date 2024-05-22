vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeOpen)

vim.cmd([[ autocmd TextYankPost * lua require('osc52').copy_visual() ]])
