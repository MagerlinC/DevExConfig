require "nvchad.options"

-- add yours here!
vim.wo.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false
