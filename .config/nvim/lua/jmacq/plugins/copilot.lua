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
      position = "right",
    },
  },
}
