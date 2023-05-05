return {
  "folke/zen-mode.nvim",

  -- TODO: Make this config actually work with tmux and kitty, it would be awesome
  opts = {
    tmux = {
      enabled = false,
    },

    kitty = {
      enabled = false,
      font = "+4", -- font size increment
    },
  },

  keys = {
    { "<Leader>r", ":ZenMode<CR>", "Enter Zen Mode" },
  },
}
