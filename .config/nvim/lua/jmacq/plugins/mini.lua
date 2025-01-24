return {
  {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
      require("mini.ai").setup()
      require("mini.hues").setup({ background = "#19213a", foreground = "#c4c6cd" })
      require("mini.operators").setup()
      require("mini.surround").setup()
      require("mini.cursorword").setup()
      local indentscope = require("mini.indentscope")
      indentscope.setup({
        draw = {
          animation = indentscope.gen_animation.none(),
        },
        symbol = "┊",
      })

      local hipatterns = require("mini.hipatterns")
      hipatterns.setup({
        highlighters = {
          hex_color = hipatterns.gen_highlighter.hex_color(),
        },
      })

      vim.cmd([[colorscheme randomhue]])
    end,
  },
}
