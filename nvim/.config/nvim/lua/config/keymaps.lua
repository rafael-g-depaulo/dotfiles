local m = require("mapx").setup({ global = "skip", whichkey = true })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- use ; as : to run commands
-- m.nmap(";", ":")

-- make C-d and C-u feel good to use
m.nnoremap("<C-d>", "<C-d>zz")
m.nnoremap("<C-u>", "<C-u>zz")

-- stuff imported from vscode
-- m.map("<C-w>", ":clo<CR>", "Close window")
m.map("<Leader>W", ":bd<CR>", "Close window")

-- toggle file tree
m.nmap("<Leader>o", ":Neotree toggle<CR>", "Toggle file tree")

-- Toggle comments (this is equivalent to gcc)
m.vmap("<Leader>q", ":Commentary<CR>", "Toggle comment")
m.nmap("<Leader>q", ":Commentary<CR>", "Toggle comment")
m.inoremap("<C-a>", "<cmd>Commentary<CR>", "Toggle comment")

-- Add empty lines
m.nnoremap(
  "<Leader>k",
  ":set paste<CR>m`O<Esc>``:set nopaste<CR>k",
  m.silent,
  { silent = true },
  "Insert empty line above"
)
m.nnoremap("<Leader>j", ":set paste<CR>m`o<Esc>``:set nopaste<CR>j", "Insert empty line below")

m.nmap("<Leader>td", "<Leader>kkgccA TODO: ", "Add TODO comment")

-- Clear search
m.map("<Leader>sq", ':let @/ = ""<CR>', "Clear search")

-- Aliases for command mode commands
vim.cmd("cnoreabbrev <expr> W ((getcmdtype() i# 'W')?('w'):('W'))")
vim.cmd("cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))")
vim.cmd("cnoreabbrev <expr> Qa ((getcmdtype() is# ':' && getcmdline() is# 'Qa')?('qa'):('Qa'))")
vim.cmd("cnoreabbrev <expr> Qa! ((getcmdtype() is# ':' && getcmdline() is# 'Qa!')?('qa'):('Qa!'))")

-- Search and Replace
m.nmap("<Leader>fd", ":%s//g<Left><Left>", "Find and replace")

-- Open folder in current working directory
m.nmap("<Leader>D", ":!naut .<CR>", "Open working 'D'irectory")

-- Yank to system clipboard
m.nmap("<Leader>y", '"+y', "Yank to system clipboard")
m.vmap("<Leader>y", '"+y', "Yank to system clipboard")
