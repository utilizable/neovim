-------------------------
-- Chnage default leader key to space
-------------------------
vim.g.mapleader = " "

-------------------------
-- Invoke osc52 when using vim yank
-------------------------
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeOpen)

-------------------------
-- Invoke osc52 when using vim yank
-------------------------
vim.cmd([[ autocmd TextYankPost * lua require('osc52').copy_visual() ]])

-------------------------
-- Press space + c to switch colors
-------------------------
-- Define a list of colorschemes to cycle through
local colorschemes = {"kanagawa-lotus", "kanagawa-dragon" }

-- Initialize an index to track the current colorscheme
local current_index = 1

-- Define a function to cycle through the colorschemes
local function cycle_colorscheme()
  -- Apply the current colorscheme
  vim.cmd("colorscheme " .. colorschemes[current_index])
  -- Move to the next colorscheme in the list, wrap around if necessary
  current_index = current_index % #colorschemes + 1
end

-- Set up the key mapping to call the cycle_colorscheme function
vim.keymap.set("n", "<leader>c", cycle_colorscheme)
