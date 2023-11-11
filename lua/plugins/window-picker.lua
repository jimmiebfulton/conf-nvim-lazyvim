return {
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    opts = {
      hint = "floating-big-letter",
    },
    keys = {
      {
        "<leader>ww",
        function()
          local window_id = require("window-picker").pick_window()
          if window_id ~= nil then
            vim.api.nvim_set_current_win(window_id)
          end
        end,
        desc = "Other Window",
      },
    },
  },
}
