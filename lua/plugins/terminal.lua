return {

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      autochdir = true,
      persist_mode = true,
    },
    keys = {
      {
        "<c-/>",
        "<cmd>9ToggleTerm direction=float<cr>",
        desc = "Terminal Float",
      },
      {
        "<leader>ft",
        "<cmd>ToggleTerm<cr>",
        desc = "Terminal Toggle",
      },
      {
        "<leader>fT1",
        "<cmd>8ToggleTerm direction=tab<cr>",
        desc = "Layout: 1 Pane",
      },
      {
        "<leader>fT2",
        "<cmd>8ToggleTerm direction=tab<cr><cmd>1ToggleTerm direction=horizontal<cr>",
        desc = "Layout: 2 Panes",
      },
      {
        "<leader>fT3",
        "<cmd>8ToggleTerm direction=tab<cr><cmd>1ToggleTerm direction=horizontal<cr><cmd>2ToggleTerm direction=vertical<cr>",
        desc = "Layout: 3 Panes",
      },
    },
  },

  -- Snacks utils
  {
    "folke/snacks.nvim",
    opts = {
      terminal = {
        enabled = false,
      },
    },
    keys = {
      {
        "<leader>ft",
        group = "terminal",
        desc = "Terminal",
      },
    },
  },
}
