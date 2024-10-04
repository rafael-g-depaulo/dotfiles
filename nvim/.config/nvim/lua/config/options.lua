-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- Dont automatically yank to system clipboard
vim.opt.clipboard = "unnamed"

vim.wo.wrap = true
vim.wo.linebreak = true
vim.wo.list = false -- extra option I set in addition to the ones in your question

-- line wrapping
opt.wrap = true
opt.breakindent = true
vim.o.showbreak = string.rep(" ", 3) -- Make it so that long lines wrap smartly
opt.linebreak = true
-- Remap for dealing with word wrap
-- vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- vim.treesitter.language.register("html", "hbs")
