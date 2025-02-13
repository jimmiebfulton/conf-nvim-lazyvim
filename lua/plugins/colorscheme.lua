return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "github_dark_dimmed",
      colorscheme = "nordfox",
    },
  },

  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
  },

  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },

  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    opts = {
      background = { -- map the value of 'background' option to a theme
        dark = "dragon", -- try "dragon" !
        light = "lotus",
      },
    },
  },

  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    priority = 1000,
  },

  {
    "marko-cerovac/material.nvim",
    priority = 1000,
  },
}
