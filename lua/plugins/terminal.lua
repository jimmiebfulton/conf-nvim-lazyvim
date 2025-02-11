return {

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    lazy = false,
    opts = {
      autochdir = true,
      persist_mode = true,
      shell = vim.o.shell,
      hide_numbers = true,
      start_in_insert = true,
      on_create = function()
        vim.cmd([[ setlocal signcolumn=no ]])
      end,
    },
    keys = {
      {
        "<c-/>",
        "<cmd>9ToggleTerm size=35 direction=float<cr>",
        desc = "Terminal Float",
        mode = { "n", "t" },
      },
      {
        "<c-.>",
        "<cmd>5ToggleTerm size=35 direction=horizontal<cr>",
        desc = "Terminal Toggle",
        mode = { "n", "t" },
      },
      {
        "<c-,>",
        "<cmd>6ToggleTerm direction=tab<cr><cmd>7ToggleTerm direction=horizontal<cr><cmd>8ToggleTerm direction=vertical<cr>",
        desc = "Terminal Toggle",
        mode = { "n", "t" },
      },
    },
  },
}
