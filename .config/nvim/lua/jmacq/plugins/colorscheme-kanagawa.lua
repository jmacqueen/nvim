return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    theme = "wave", -- Load "wave" theme
    background = { -- map the value of 'background' option to a theme
      dark = "dragon",
      light = "lotus",
    },
  },
  init = function()
    vim.cmd([[colorscheme kanagawa]])
  end,
}
