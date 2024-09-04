return {
  "stevearc/aerial.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("aerial").setup({
      filter_kind = false,
      show_guides = true,
    })
  end,
  keys = {
    { "<leader>o", "<cmd>AerialToggle!<CR>", desc = "Toggle [o]utline" },
  },
}
