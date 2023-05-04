-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- stuff imported from vscode
map("n", "<C-w>", ":clo<CR>")

-- toggle file tree
map("n", "<Leader>pv", ":Neotree toggle<CR>")

-- Toggle comments
-- map("n", "<C-S-a>", ":Commentary<CR>")
map("n", "<Leader>q", ":Commentary<CR>")
map("v", "<Leader>q", ":Commentary<CR>")
