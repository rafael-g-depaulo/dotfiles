return {
  -- "hrsh7th/cmp-nvim-lsp-signature-help",
  -- "nvim-cmp",

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
