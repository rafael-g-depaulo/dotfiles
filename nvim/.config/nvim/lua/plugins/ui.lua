return {
  -- makes some inputs and menus pretty
  {
    "stevearc/dressing.nvim",
    opts = {},
  },

  -- Pretty buffer line showing open files
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",

    -- opts = function(_, opts)
    -- TODO: make options work
    opts = {
      hover = {
        enabled = true,
        delay = 200,
        reveal = { "close" },
      },
    },
  },

  -- colorizer
  {
    "norcalli/nvim-colorizer.lua",
    opts = {
      -- TODO: find how to properly config this plugin to work?
      -- "*",
      -- css = true,
    },
  },

  -- show code context in statusline
  {
    "SmiteshP/nvim-navic",
    dependencies = "neovim/nvim-lspconfig",
    opts = {
      lsp = {
        auto_attach = true,
        preference = nil,
      },
      highlight = true,
      separator = " > ",
      depth_limit = 0,
      depth_limit_indicator = "..",
      safe_output = true,
      lazy_update_context = false,
      click = true,
    },
    setup = function()
      vim.o.statusline = "%{%v:lua.require'nvim-navic'.get_location()%}"
    end,
  },
}
