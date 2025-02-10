return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "github_dark_dimmed",
      colorscheme = "nordfox",
    },
  },

  { "EdenEast/nightfox.nvim" }, -- lazy

  {
    "rebelot/kanagawa.nvim",
    opts = {
      background = { -- map the value of 'background' option to a theme
        dark = "dragon", -- try "dragon" !
        light = "lotus",
      },
    },
  },

  { "projekt0n/github-nvim-theme", name = "github-theme" },

  { "marko-cerovac/material.nvim" },
}
