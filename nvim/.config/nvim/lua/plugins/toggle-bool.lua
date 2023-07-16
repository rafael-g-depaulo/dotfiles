return {
  {
    "gerazov/vim-toggle-bool",
    -- dependencies = { "AndrewRadev/switch.vim" },
    keys = {
      -- { "<Leader>tb", ":ToggleBool<CR>", desc = "Toggle Boolean" },
    },
  },
  {
    "AndrewRadev/switch.vim",
    keys = {
      { "-", ":Switch<CR>", desc = "Toggle value" },
    },
  },
}
