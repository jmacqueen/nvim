return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    indent = { enabled = true, animate = { enabled = false } },
    notifier = { enabled = true },
  },
  keys = {
    { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer", },
    { "<leader>gb", function() Snacks.git.blame_line() end, desc = "Git Blame Line", },
    { "<leader>gB", function() Snacks.gitbrowse() end, desc = "Git Browse", mode = { "n", "v" }, },
    { "<leader>gf", function() Snacks.lazygit.log_file() end, desc = "Lazygit Current File History", },
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit", },
    { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Lazygit Log (cwd)", },
  },
  init = function()
    local Snacks = require("snacks")
    Snacks.toggle.diagnostics():map("<leader>ud")
    Snacks.toggle.line_number():map("<leader>ul")
    Snacks.toggle.indent():map("<leader>ui")
    Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
    Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
  end,
}
