-- Navigate the tree of type definitions and function calls in your codebase with Meow Yarn.
return {
  "retran/meow.yarn.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  config = function()
    require("meow.yarn").setup({
      -- Your custom configuration goes here
    })
    vim.keymap.set("n", "<leader>yS", "<Cmd>MeowYarn type super<CR>", { desc = "Yarn: Super Types" })
    vim.keymap.set("n", "<leader>ys", "<Cmd>MeowYarn type sub<CR>", { desc = "Yarn: Sub Types" })
    vim.keymap.set("n", "<leader>yC", "<Cmd>MeowYarn call callers<CR>", { desc = "Yarn: Callers" })
    vim.keymap.set("n", "<leader>yc", "<Cmd>MeowYarn call callees<CR>", { desc = "Yarn: Callees" })
  end,
}
