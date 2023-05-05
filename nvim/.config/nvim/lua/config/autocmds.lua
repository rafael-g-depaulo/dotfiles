-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- add whitespace at the end of file after save
vim.api.nvim_create_autocmd("BufWritePre", {
  -- command = ":%s/($\ns*)+%$/\r/",
  callback = function()
    --   vim.cmd(":%s/($\ns*)+%$/AAAAAAA\r/<CR>")
  end,
})

M.nvim_create_augroups({
  -- other autocommands
  open_folds = {
    { "BufReadPost,FileReadPost", "*", "normal zR" },
  },
})
