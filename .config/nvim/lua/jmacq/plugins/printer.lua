return {
  "rareitems/printer.nvim",
  config = function()
    require("printer").setup({
      keymap = "gp", -- Plugin doesn't have any keymaps by default
      add_to_inside = function(text)
        return text
      end,
    })
  end,
}
