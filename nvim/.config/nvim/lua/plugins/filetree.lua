return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = true,
        hide_gitignored = true,
        hide_by_name = {
          "node_modules",
        },
        hide_by_pattern = { -- uses glob style patterns
          --"*.meta",
          --"*/src/*/tsconfig.json",
        },
        always_show = { -- remains visible even if other settings would normally hide it
          ".gitignored",
        },
      },
    },
    source_selector = {
      winbar = true,
      statusline = false,
    },
    window = {
      width = 20,
    },
  },
}
