return {
  "nvim-treesitter/nvim-treesitter-context",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    enable = true, -- Enable this plugin
    max_lines = 0, -- No limit on context lines
    trim_scope = "outer", -- How to trim when context is too large
    min_window_height = 0, -- No minimum height required
    -- patterns = { -- Match these node types
    --   default = {
    --     "class",
    --     "function",
    --     "method",
    --     "for",
    --     "while",
    --     "if",
    --     "switch",
    --     "case",
    --   },
    -- },
    zindex = 20, -- Show above other UI elements
    mode = "topline", -- "cursor" or "topline"
  },
  event = { "BufReadPost", "BufNewFile" },
}
