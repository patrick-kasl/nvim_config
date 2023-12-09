vim.g.mapleader = " "
-- This is the remap. This case it is referencing the above " " space, and mapping that to Ex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
