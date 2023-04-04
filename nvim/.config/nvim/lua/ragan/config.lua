vim.cmd("syntax on")

-- cursor and line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- tabs and scrolling
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.scrolloff = 6
vim.opt.expandtab = true

-- splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- idk, i just coppied primagean
vim.opt.termguicolors = true

-- link vim and OS clipboard
vim.o.clipboard = 'unnamedplus'

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Remap for dealing with line wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

