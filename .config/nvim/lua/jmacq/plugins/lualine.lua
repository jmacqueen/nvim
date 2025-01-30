return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local colors = {
      blue = "#65D1FF",
      green = "#3EFFDC",
      violet = "#FF61EF",
      yellow = "#FFDA7B",
      red = "#FF4A4A",
      fg = "#c3ccdc",
      bg = "#112638",
      inactive_bg = "#2c3043",
    }

    local my_lualine_theme = {
      normal = {
        a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      insert = {
        a = { bg = colors.green, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      visual = {
        a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      command = {
        a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      replace = {
        a = { bg = colors.red, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      inactive = {
        a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
        b = { bg = colors.inactive_bg, fg = colors.semilightgray },
        c = { bg = colors.inactive_bg, fg = colors.semilightgray },
      },
    }

    -- function to show filename with context if there are multiple files with the same name open
    local function filename_with_context()
      local current_file = vim.fn.expand("%:t") -- Get filename
      local current_path = vim.fn.expand("%:p:h") -- Get full directory path
      local buffers = vim.api.nvim_list_bufs() -- Get list of buffers
      local seen_files = {} -- Store filename occurrences

      -- First pass: count occurrences of each filename
      for _, buf in ipairs(buffers) do
        local bufname = vim.api.nvim_buf_get_name(buf)
        local buf_file = bufname:match("^.+/(.+)$") -- Extract file name
        if buf_file then
          seen_files[buf_file] = (seen_files[buf_file] or 0) + 1
        end
      end

      -- If no duplicates, return just the filename
      if seen_files[current_file] == 1 then
        return current_file
      end

      -- Otherwise, add parent directories progressively
      local parts = {}
      for dir in current_path:gmatch("[^/]+") do
        table.insert(parts, dir)
      end

      -- Build shortest unique identifier
      local result = current_file
      for i = #parts, 1, -1 do
        result = parts[i] .. "/" .. result
        -- Check if the result is unique
        local unique = true
        for _, buf in ipairs(buffers) do
          local bufname = vim.api.nvim_buf_get_name(buf)
          if bufname ~= vim.fn.expand("%:p") and bufname:match(result .. "$") then
            unique = false
            break
          end
        end
        if unique then
          return result
        end
      end

      -- Fallback: return full relative path
      return vim.fn.expand("%:~:.")
    end

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = my_lualine_theme,
      },
      sections = {
        lualine_c = { filename_with_context },
        -- lualine_c = {
        --   {
        --     "filename",
        --     path = 1, -- 1: Show filename with parent directory
        --     shorting_target = 40, -- Shorten long paths dynamically
        --   },
        -- },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
