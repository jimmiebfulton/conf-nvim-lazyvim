return {

  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "s1n7ax/nvim-window-picker",
    },
    opts = {
      filesystem = {
        bind_to_cwd = true,
        follow_current_file = { enabled = false },
      },
      window = {
        mappings = {
          ["<Left>"] = "close_node",
          ["<Right>"] = "toggle_node",
          ["<C-c>"] = "close_window",
        },
      },
    },
    keys = {
      {
        "<leader>fe",
        "<cmd>Neotree close<cr><cmd>Neotree focus float toggle reveal<cr>",
        desc = "Explore in Float",
      },
      { "<leader>fE", "<cmd>Neotree focus left reveal<cr>", desc = "Explore in Bar" },
      {
        "<leader>be",
        "<cmd>Neotree buffers close<cr><cmd>Neotree buffers float focus reveal<cr>",
        desc = "Explore in Float",
      },
      { "<leader>bE", "<cmd>Neotree buffers left reveal<cr>", desc = "Explore in Bar" },
      {
        "<leader>ge",
        "<cmd>Neotree git_status close<cr><cmd>Neotree git_status float reveal<cr>",
        desc = "Explore in Float",
      },
      { "<leader>gE", "<cmd>Neotree git_status left reveal<cr>", desc = "Explore in Bar" },
    },
  },
}
