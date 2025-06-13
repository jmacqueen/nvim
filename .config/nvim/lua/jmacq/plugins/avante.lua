return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = true,
  version = false, -- set this if you want to always pull the latest change
  opts = {
    -- auto_suggestions_provider = "copilot",
    provider = "copilot",
    providers = {
      copilot = {
        model = "gpt-4.1", -- or "gpt-4", "gpt-3.5-turbo", etc.
        extra_request_body = {
          -- max_tokens = 128000,
        },
      },
    },
    -- provider = "openai",
    -- openai = {
    --   api_key = vim.fn.getenv("OPENAI_API_KEY"),
    -- },
    mappings = {
      confirm = {
        focus_window = "<C-Enter>",
        code = "c",
        resp = "r",
        input = "i",
      },
    },
    selector = {
      provider = "snacks",
    },
    input = {
      provider = "snacks",
    },
    web_search_engine = {
      provider = "kagi", -- tavily, serpapi, searchapi, google, kagi, brave, or searxng
      proxy = nil, -- proxy support, e.g., http://127.0.0.1:7890
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    -- "echasnovski/mini.pick", -- for file_selector provider mini.pick
    -- "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    -- "stevearc/dressing.nvim", -- for input provider dressing
    "folke/snacks.nvim", -- for input provider snacks
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
