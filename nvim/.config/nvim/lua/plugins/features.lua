return {
  -- file searcher using telescope
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "sharkdp/fd" },
  },

  -- lets me navigate seamlessly between vim and tmux windows
  { "christoomey/vim-tmux-navigator" },

  -- add zen mode
  {
    "folke/zen-mode.nvim",
    opts = {
      plugins = {
        -- disable some global vim options (vim.o...)
        -- comment the lines to not apply the options
        options = {
          enabled = true,
          ruler = false, -- disables the ruler text in the cmd line area
          showcmd = false, -- disables the command in the last line of the screen
        },
        twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
        gitsigns = { enabled = false }, -- disables git signs
        tmux = { enabled = false }, -- disables the tmux statusline
        -- this will change the font size on kitty when in zen mode
        -- to make this work, you need to set the following kitty options:
        -- - allow_remote_control socket-only
        -- - listen_on unix:/tmp/kitty
        kitty = {
          enabled = true,
          font = "+4", -- font size increment
        },
      },
    },
  },

  -- Noice (notification plugin) config
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- needed because it was breaking
      ["config.lsp.signature.enabled"] = false,
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
}
