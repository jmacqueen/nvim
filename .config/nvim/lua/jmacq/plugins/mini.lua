return {
  {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
      require("mini.ai").setup()
      require("mini.hues").setup({ background = "#19213a", foreground = "#c4c6cd" })
      require("mini.operators").setup()
      require("mini.surround").setup()

      vim.cmd([[colorscheme randomhue]])
    end,
  },
}
