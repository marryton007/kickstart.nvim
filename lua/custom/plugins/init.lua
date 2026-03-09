-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
---@module 'lazy'
---@type LazySpec

vim.opt.mouse = ''
vim.g.have_nerd_font = true
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldenable = false
vim.opt.foldlevel = 99
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
return {}
