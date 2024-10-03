require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>cc", ":source ~/.config/nvim/lua/mappings.lua<CR>", { desc = "source keymaps" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "gb", "<C-o>", { silent = true, desc = "Go back" })

-- Navigate buffers
map("n", "H", ":bp<CR>", { silent = true, desc = "Prev buffer" })
map("n", "L", ":bn<CR>", { silent = true, desc = "Next buffer" })
map("n", "<leader>bo", ":%bd|e#<CR>", { silent = true, desc = "Close all buffers except current" })
map("n", "<leader>bd", ":bd<CR>", { silent = true, desc = "Close current buffer" })

-- Visual mode move lines
map("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move selected lines down" })
map("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move selected lines up" })

-- Keep cursor in middle while going up/down
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Dont die on Q
map("n", "Q", "<nop>")

-- Telescope
local builtin = require "telescope.builtin"
map("n", "<leader><leader>", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>sg", builtin.live_grep, { desc = "Telescope live grep" })

-- NvChad Terminal
map("t", "<Esc>", "<C-\\><C-n>", { silent = true, desc = "Exit terminal mode" })
