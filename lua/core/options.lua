-- Impostazioni di base ---
vim.opt.compatible = false
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.wildmode = { "longest", "list" }
vim.opt.clipboard = "unnamedplus"
vim.opt.ttyfast = true
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")
vim.cmd("filetype plugin on")
vim.cmd [[highlight IblScope guifg=#bb9af7]]
vim.o.pumheight = 8 


