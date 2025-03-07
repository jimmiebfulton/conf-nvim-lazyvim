return {
  "saghen/blink.cmp",
  lazy = false,
  opts = {
    keymap = {
      preset = "super-tab",
      ["<CR>"] = { "accept", "fallback" },
      ["<Up>"] = { "select_prev", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
    },
    completion = {
      list = {
        selection = {
          preselect = true,
          auto_insert = true,
        },
      },
      trigger = {
        show_in_snippet = false,
      },
    },
    cmdline = {
      enabled = true,
      keymap = {
        preset = "cmdline",
        ["<Up>"] = { "select_prev" },
        ["<C-k>"] = { "select_prev" },
        ["<Down>"] = { "select_next" },
        ["<C-j>"] = { "select_next" },
      },
      sources = function()
        local type = vim.fn.getcmdtype()
        -- Search forward and backward
        if type == "/" or type == "?" then
          return { "buffer" }
        end
        -- Commands
        if type == ":" or type == "@" then
          return { "cmdline" }
        end
        return {}
      end,
      completion = {
        trigger = {
          show_on_blocked_trigger_characters = {},
          show_on_x_blocked_trigger_characters = {},
        },
        list = {
          selection = {
            -- When `true`, will automatically select the first item in the completion list
            preselect = false,
            -- When `true`, inserts the completion item automatically when selecting it
            auto_insert = true,
          },
        },
        -- Whether to automatically show the window when new completion items are available
        menu = { auto_show = false },
        -- Displays a preview of the selected item on the current line
        ghost_text = { enabled = true },
      },
    },
    sources = {
      providers = {
        cmdline = {
          -- min_keyword_length = function(ctx)
          --   -- when typing a command, only show when the keyword is 3 characters or longer
          --   if ctx.mode == "cmdline" and string.find(ctx.line, " ") == nil then
          --     return 3
          --   end
          --   return 0
          -- end,
        },
      },
    },
  },
}
