vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true
vim.g.gruvbox_contrast_dark = "hard"
vim.cmd("colorscheme gruvbox")

require("plugins")
require("keybinds")
require("neovide")
