return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    require("which-key").setup()

    require("which-key").add({
      { "<leader>t", group = "[T]ab" },
      { "<leader>f", group = "[F]ind" },
      { "<leader>s", group = "[S]plit" },
      { "<leader>n", group = "[N]o" },
      { "<leader>e", group = "File [e]xplorer" },
      { "<leader>x", group = "E[x]plore trouble issue" },
      { "<leader>m", group = "For[m]at" },
      { "<leader>h", group = "Git [h]unk" },
      { "<leader>c", group = "[C]ode actions" },
      { "<leader>l", group = "[L]azy git" },
      { "<leader>r", group = "Smart [r]ename" },
      { "<leader>w", group = "[W]orkspace" },
    })
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
