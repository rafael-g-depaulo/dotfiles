local m = require("mapx").setup({ global = "skip", whichkey = true })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- use ; as : to run commands
m.nmap(";", ":")
m.vmap(";", ":")

-- stuff imported from vscode
-- m.map("<C-w>", ":clo<CR>", "Close window")

-- toggle file tree
m.nmap("<Leader>pv", ":Neotree toggle<CR>", "Toggle file tree")

-- Toggle comments (this is equivalent to gcc)
m.nmap("<Leader>q", ":Commentary<CR>", "Toggle comment")
m.vmap("<Leader>q", ":Commentary<CR>", "Toggle comment")
m.inoremap("<C-a>", "<cmd>Commentary<CR>", "Toggle comment")

-- Add empty lines
m.nnoremap("<Leader>k", ":set paste<CR>m`O<Esc>``:set nopaste<CR>", "Insert empty line above")
m.nnoremap("<Leader>j", ":set paste<CR>m`o<Esc>``:set nopaste<CR>", "Insert empty line below")

m.nmap("<Leader>td", "<Leader>kkgccA TODO: ", "Add TODO comment")

-- Clear search
m.map("<Leader>sq", ':let @/ = ""<CR>', "Clear search")
