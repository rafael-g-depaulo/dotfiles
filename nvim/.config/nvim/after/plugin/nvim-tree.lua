-- examples for your init.luatree

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local nvimTree = require("nvim-tree.api")

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  -- open_on_setup = true, -- deprecated, apparently
  sort_by = "case_sensitive",
  view = {
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    -- dotfiles = true,
    custom = { "^\\.git" },
  },
  git = {
    enable = true,
    -- ignore = true,
  },
  actions = {
    change_dir = {
      restrict_above_cwd = true,
    }
  },
})

vim.keymap.set("n", "<leader>pf", nvimTree.tree.toggle)

local function open_nvim_tree()
  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

