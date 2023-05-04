local m = require("mapx").setup({ global = "skip", whichkey = true })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- stuff imported from vscode
m.nmap("n", "<C-w>", ":clo<CR>")

-- toggle file tree
m.nmap("<Leader>pv", ":Neotree toggle<CR>")

-- Toggle comments (this is equivalent to gcc)
-- map("n", "<C-S-a>", ":Commentary<CR>")
m.nmap("<Leader>q", ":Commentary<CR>")
m.vmap("<Leader>q", ":Commentary<CR>")

-- Add empty lines
m.nnoremap("<Leader>k", ":set paste<CR>m`O<Esc>``:set nopaste<CR>", "Insert empty line above")
m.nnoremap("<Leader>j", ":set paste<CR>m`o<Esc>``:set nopaste<CR>", "Insert empty line below")

m.nmap("<Leader>td", "<Leader>kkgccA TODO: ", "Add TODO comment")
