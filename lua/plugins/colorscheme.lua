return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordfox",
    },
  },

  { "EdenEast/nightfox.nvim" }, -- lazy

  {
    "rebelot/kanagawa.nvim",
    opts = {
      background = { -- map the value of 'background' option to a theme
        dark = "wave", -- try "dragon" !
        light = "lotus",
      },
    },
  },
}
