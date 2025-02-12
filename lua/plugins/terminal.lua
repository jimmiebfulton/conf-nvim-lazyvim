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
        "<c-,>",
        "<cmd>7ToggleTerm size=35 direction=horizontal name=Left<cr>",
        desc = "Terminal Toggle",
        mode = { "n" },
      },
      {
        "<c-.>",
        "<cmd>8ToggleTerm size=35 direction=horizontal name=Right<cr>",
        desc = "Terminal Toggle",
        mode = { "n" },
      },
      {
        "<c-j>",
        "<cmd>wincmd j<cr>",
        desc = "Window Up",
        mode = { "t" },
      },
      {
        "<c-k>",
        "<cmd>wincmd k<cr>",
        desc = "Window Down",
        mode = { "t" },
      },
      {
        "<c-.>",
        "<cmd>ToggleTermToggleAll<cr>",
        desc = "Terminal Toggle",
        mode = { "t" },
      },
      {
        "<c-,>",
        "<cmd>ToggleTermToggleAll<cr>",
        desc = "Terminal Toggle",
        mode = { "t" },
      },
    },
  },
}
