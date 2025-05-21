return {
  "olimorris/codecompanion.nvim",
  event = "VeryLazy",
  lazy = true,
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  init = function()
    -- Expand 'cc' into 'CodeCompanion' in the command line
    vim.cmd([[cab cc CodeCompanion]])
    vim.cmd([[cab ccc CodeCompanionCmd]])
  end,
  keys = {
    { "<leader>aa", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle CodeCompanion chat" },
    { "<leader>ai", "<cmd>CodeCompanion<cr>", desc = "CodeCompanion [i]nline assistant", mode = "n" },
    { "<leader>ai", ":'<,'>CodeCompanion<cr>", desc = "CodeCompanion [i]nline assistant (visual)", mode = "v" },
    { "<leader>am", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion [m]enu" },
  },
}
