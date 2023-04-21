vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pv", require("nvim-tree.api").tree.toggle)

-- vertical movement. remap page up/down to also center view
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })

-- move selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep search result centered on screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Save
vim.keymap.set("n", "<C-s>", ":w<CR>")

-- yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- map <C-c> to esc because there's sometimes a difference in visual-insert mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- splits
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-w>", ":clo<CR>") -- close current split

-- Shift + arrow keys change size of current split (for some reason vertical is doing the opposite of what i'd expect here)
vim.keymap.set("", "<S-Up>", ":resize +3<CR>")
vim.keymap.set("", "<S-Down>", ":resize -3<CR>")
vim.keymap.set("", "<S-Right>", ":vertical resize +3<CR>")
vim.keymap.set("", "<S-Left>", ":vertical resize -3<CR>")

vim.keymap.set("", "<leader>th", "<C-w>t<Cw>H")
vim.keymap.set("", "<leader>tk", "<C-w>t<Cw>K")

-- this sends the yanked selection to the linux clipboard through xclip
vim.keymap.set("v", "<leader>y", "y:call system('xclip', @@)<CR>")

