-- Example comment.

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.g.mapleader = " "

vim.cmd [[
let g:netrw_bufsettings="noma nomod nonu nobl nowrap ro rnu"
]]

-- This tells vim/nvim to use the system clipboard for all yank, delete, change and put operations
vim.cmd [[
if has("unnamedplus")
    set clipboard=unnamedplus
else
    set clipboard=unnamed
endif
]]
