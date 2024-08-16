-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "gb", "<C-o>", { silent = true, desc = "Go back" })

-- Visual mode move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move selected lines up" })

-- Keep cursor in middle while going up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Dont die on Q
vim.keymap.set("n", "Q", "<nop>")

-- Quick fix list navigation
-- vim.keymap.set("n", "<C-k>", "<cmd>lnext<CR>zz", { silent = true })
-- vim.keymap.set("n", "<C-j>", "<cmd>lprev<CR>zz", { silent = true })

-- Change all occurences of current word
vim.keymap.set(
  "n",
  "<leader>cw",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Change all occurences of current word" }
)

-- -- Luasnip
-- local function prequire(...)
--   local status, lib = pcall(require, ...)
--   if status then
--     return lib
--   end
--   return nil
-- end
--
-- local luasnip = prequire("luasnip")
-- local cmp = prequire("cmp")
--
-- local t = function(str)
--   return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end
--
-- local check_back_space = function()
--   local col = vim.fn.col(".") - 1
--   if col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
--     return true
--   else
--     return false
--   end
-- end
--
-- _G.tab_complete = function()
--   if cmp and cmp.visible() then
--     cmp.select_next_item()
--   elseif luasnip and luasnip.expand_or_jumpable() then
--     return t("<Plug>luasnip-expand-or-jump")
--   elseif check_back_space() then
--     return t("<Tab>")
--   else
--     cmp.complete()
--   end
--   return ""
-- end
-- _G.s_tab_complete = function()
--   if cmp and cmp.visible() then
--     cmp.select_prev_item()
--   elseif luasnip and luasnip.jumpable(-1) then
--     return t("<Plug>luasnip-jump-prev")
--   else
--     return t("<S-Tab>")
--   end
--   return ""
-- end
--
-- vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", { expr = true })
-- vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", { expr = true })
-- vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })
-- vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })
-- vim.api.nvim_set_keymap("i", "<C-E>", "<Plug>luasnip-next-choice", {})
-- vim.api.nvim_set_keymap("s", "<C-E>", "<Plug>luasnip-next-choice", {})
