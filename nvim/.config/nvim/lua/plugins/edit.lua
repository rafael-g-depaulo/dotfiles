return {
  { "tpope/vim-commentary" },

  -- auto close html/jsx tags
  { "windwp/nvim-ts-autotag" },

  -- removed in favor of the newly recommended mini.surround
  -- -- nvim surround
  -- {
  --   "kylechui/nvim-surround",
  --   version = "*", -- Use for stability; omit to use `main` branch for the latest features
  --   event = "VeryLazy",
  --   config = function()
  --     require("nvim-surround").setup({
  --       -- Configuration here, or leave empty to use defaults
  --     })
  --   end,
  -- },

  -- show function signature as you type
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "<leader>h",
        function()
          require("lsp_signature").toggle_float_win()
          -- this below should work too
          -- vim.lsp.buf.signature_help()
        end,
        desc = "Show Signature 'H'elp",
      },
    },
    config = function(_, opts)
      require("lsp_signature").setup(opts)
    end,
  },
}
