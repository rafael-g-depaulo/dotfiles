return {
  -- {
  --   "L3MON4D3/LuaSnip",
  --   -- follow latest release.
  --   version = "1.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  --   -- install jsregexp (optional!).
  --   build = "make install_jsregexp",
  --   dependencies = { "rafamadriz/friendly-snippets" },
  -- },
  -- {
  --   "L3MON4D3/LuaSnip",
  -- },

  -- auto space/add newline to stuff like {} when you <CR> inside it
  { "windwp/nvim-autopairs" },

  -- toogle booleans ('-' in normal mode)
  {
    "AndrewRadev/switch.vim",
    keys = {
      { "-", ":Switch<CR>", desc = "Toggle value" },
    },
  },
}
