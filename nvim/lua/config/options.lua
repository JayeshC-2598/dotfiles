vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("syntax off")
vim.g.mapleader = ","
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_matchparen = 1
vim.opt.laststatus = 3
vim.opt.winbar = ""
vim.opt.background = "dark"
vim.opt.cmdheight = 0
vim.opt.termguicolors = true
vim.opt.shortmess:append({ I = true })
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 0
vim.opt.smoothscroll = false
vim.opt.sidescrolloff = 0
vim.opt.wrap = false
