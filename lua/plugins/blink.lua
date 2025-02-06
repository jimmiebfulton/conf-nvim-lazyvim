return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "super-tab",
      ["<CR>"] = { "accept", "fallback" },
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
  },
}
