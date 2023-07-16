-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- i don't remember exactly how useful this is, so i'll leave it commented out for now
-- ------------------- Add code folding
-- local vim = vim
-- local opt = vim.opt
-- local api = vim.api

-- opt.foldmethod = "expr"
-- opt.foldexpr = "nvim_treesitter#foldexpr()"
-- local M = {}

-- vim.v.foldlevelstart = 99

-- -- function to create a list of commands and convert them to autocommands
-- -------- This function is taken from https://github.com/norcalli/nvim_utils
-- function M.nvim_create_augroups(definitions)
--   for group_name, definition in pairs(definitions) do
--     api.nvim_command("augroup " .. group_name)
--     api.nvim_command("autocmd!")
--     for _, def in ipairs(definition) do
--       local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
--       api.nvim_command(command)
--     end
--     api.nvim_command("augroup END")
--   end
-- end

-- local autoCommands = {
--   -- other autocommands
--   open_folds = {
--     { "BufReadPost,FileReadPost", "*", "normal zR" },
--   },
-- }

-- M.nvim_create_augroups(autoCommands)
-- ------------------- Add code folding
