-- return {
--   "github/copilot.vim",
-- }
return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    -- suggestion = { enabled = false },
    panel = {
      layout = {
        position = "right",
      },
    },
    suggestion = {
      auto_trigger = "true",
    },
  },
}
