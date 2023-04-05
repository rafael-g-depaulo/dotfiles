local builtin = require('telescope.builtin')
-- [f]ind [f]ile in project
vim.keymap.set('n', '<leader>ff', function() builtin.find_files({ hidden = true }); end, {})
-- [f]ind [g]rep (substring)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- [f]ind [h]elp
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- [f]ind [s]earch
-- vim.keymap.set('n', '<leader>fs', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })	
-- end)

vim.keymap.set('n', '<C-p>', builtin.git_files, {})

