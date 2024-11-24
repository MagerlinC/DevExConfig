require "nvchad.options"

-- add yours here!
vim.wo.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"

vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.termguicolors = true
vim.opt.updatetime = 50