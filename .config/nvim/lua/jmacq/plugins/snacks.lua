return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    indent = { enabled = true, animate = { enabled = false } },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    explorer = { hidden = true },
  },
  keys = {
    -- Top pickers
    { "<leader><leader>", function() Snacks.picker.buffers({ sort_lastused = false }) end, desc = "Buffers", },
    { "<leader>:", function() Snacks.picker.command_history() end, desc = "Search command history", },
    { "<leader>\\", function() Snacks.picker.explorer() end, desc = "File explorer", },
    -- Explorer
    { "<leader>ee", function() Snacks.picker.explorer() end, desc = "File [e]xplorer", },
    -- Find
    { "<leader>fb", function() Snacks.picker.buffers({ sort_lastused = false }) end, desc = "[B]uffers", },
    { "<leader>fc", function() Snacks.picker.colorschemes() end, desc = "[C]olorschemes", },
    { "<leader>fe", function() Snacks.picker.explorer() end, desc = "File [e]xplorer", },
    { "<leader>ff", function() Snacks.picker.files({ hidden = true }) end, desc = "Find [f]iles", },
    { "<leader>fg", function() Snacks.picker.grep() end, desc = "Live [g]rep for string in cwd", },
    { "<leader>fh", function() Snacks.picker.help() end, desc = "[H]elp pages", },
    { "<leader>fk", function() Snacks.picker.keymaps() end, desc = "[K]eymaps", },
    { "<leader>fs", function() Snacks.picker.lsp_symbols() end, desc = "LSP [s]ymbols", },
    { "<leader>fp", function() Snacks.picker.projects() end, desc = "[P]rojects", },
    { "<leader>fr", function() Snacks.picker.recent() end, desc = "Find [r]ecent files", },
    { "<leader>fw", function() Snacks.picker.grep_word() end, desc = "Find [w]ord under cursor in cwd", mode = { "n", "x" }, },
    -- LSP
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto [d]efinition", },
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto [D]eclaration", },
    { "gR", function() Snacks.picker.lsp_references() end, nowait = true, desc = "[R]eferences", },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto [I]mplementation", },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition", },

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
