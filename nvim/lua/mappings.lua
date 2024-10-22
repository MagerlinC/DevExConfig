require "nvchad.mappings"

local map = vim.keymap.set
-- source keymaps
map("n", "<leader>cc", ":source ~/.config/nvim/lua/mappings.lua<CR>", { desc = "source keymaps" })

-- Various mappings
map("n", "gb", "<C-o>", { silent = true, desc = "Go back" })
map("n", "<leader>cr", vim.lsp.buf.rename, { silent = true, desc = "Rename" })
map("n", "<leader>tm", function()
  require("nvchad.themes").open()
end, { desc = "telescope nvchad themes" })
map("n", "<leader>gb", ":GitBlameToggle<CR>", { silent = true, desc = "Git blame" })

-- Hop
local hop = require "hop"
local directions = require("hop.hint").HintDirection
map("", "<leader>hw", function()
  hop.hint_words()
end, { desc = "Hop word" })
map("", "f", function()
  hop.hint_char1 { direction = directions.after_cursor, current_line_only = true }
end, { remap = true })
map("", "f", function()
  hop.hint_char1 { direction = directions.before_cursor, current_line_only = true }
end, { remap = true })
map("", "t", function()
  hop.hint_char1 { direction = directions.after_cursor, current_line_only = true, hint_offset = -1 }
end, { remap = true })
map("", "T", function()
  hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }
end, { remap = true })

-- Navigate buffers
map("n", "L", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "H", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<leader>bd", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "close current buffer" })

map("n", "<leader>bo", ":%bd|e#<CR>", { silent = true, desc = "Close all buffers except current" })

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
map("n", "<leader>fr", builtin.lsp_references, { desc = "Find references" })

-- NvChad Terminal
map("t", "<Esc>", "<C-\\><C-n>", { silent = true, desc = "Exit terminal mode" })
map("n", "<leader>th", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "terminal new horizontal term" })

-- Harpoon
local harpoon = require "harpoon"
harpoon:setup()

map("n", "<leader>H", function()
  harpoon:list():add()
end)
map("n", "<leader>h", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

map("n", "<leader>1", function()
  harpoon:list():select(1)
end, { desc = "Harpoon goto mark 1" })

map("n", "<leader>2", function()
  harpoon:list():select(2)
end, { desc = "Harpoon goto mark 2" })
map("n", "<leader>3", function()
  harpoon:list():select(3)
end, { desc = "Harpoon goto mark 3" })
map("n", "<leader>4", function()
  harpoon:list():select(4)
end, { desc = "Harpoon goto mark 4" })
map("n", "<leader>5", function()
  harpoon:list():select(5)
end, { desc = "Harpoon goto mark 5" })

-- NvimTree
map("n", "<leader>+", ":NvimTreeResize +10<CR>", { silent = true, desc = "Expand NvimTree width" })
map("n", "<leader>-", ":NvimTreeResize -10<CR>", { silent = true, desc = "Reduce NvimTree width" })
