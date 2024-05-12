return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    require("which-key").setup()

    require("which-key").register({
      ["<leader>t"] = { name = "[T]ab", _ = "which_key_ignore" },
      ["<leader>f"] = { name = "[F]ind", _ = "which_key_ignore" },
      ["<leader>s"] = { name = "[S]plit", _ = "which_key_ignore" },
      ["<leader>n"] = { name = "[N]o", _ = "which_key_ignore" },
      ["<leader>e"] = { name = "File [e]xplorer", _ = "which_key_ignore" },
      ["<leader>x"] = { name = "E[x]plore trouble issue", _ = "which_key_ignore" },
      ["<leader>m"] = { name = "For[m]at", _ = "which_key_ignore" },
      ["<leader>h"] = { name = "Git [h]unk", _ = "which_key_ignore" },
      ["<leader>c"] = { name = "[C]ode actions", _ = "which_key_ignore" },
      ["<leader>l"] = { name = "[L]azy git", _ = "which_key_ignore" },
      ["<leader>r"] = { name = "Smart [r]ename", _ = "which_key_ignore" },
      ["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
    })
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
