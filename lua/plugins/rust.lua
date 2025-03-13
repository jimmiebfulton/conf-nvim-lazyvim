return {

  {
    "saecki/crates.nvim",
    tag = "stable",
    opts = {
      popup = {
        autofocus = true,
        keys = {
          hide = { "q", "<esc>" },
          open_url = { "<CR>" },
          select = { "<CR>" },
          select_alt = { "s" },
          toggle_feature = { "<CR>" },
          copy_value = { "yy" },
          goto_item = { "gd", "K", "<C-LeftMouse>" },
          jump_forward = { "<c-i>" },
          jump_back = { "<c-o>", "<C-RightMouse>" },
        },
      },
      lsp = {
        enabled = true,
        on_attach = function(_, buffer)
          vim.keymap.set("n", "<leader>ac", function()
            require("crates").show_crate_popup()
          end, { desc = "Show Crate", buffer = buffer })
          vim.keymap.set("n", "<leader>af", function()
            require("crates").show_features_popup()
          end, { desc = "Show Features", buffer = buffer })
          vim.keymap.set("n", "<leader>ad", function()
            require("crates").show_dependencies_popup()
          end, { desc = "Show Dependencies", buffer = buffer })
          vim.keymap.set("n", "<leader>av", function()
            require("crates").show_versions_popup()
          end, { desc = "Show Versions", buffer = buffer })
        end,
        actions = true,
        completion = true,
        hover = true,
      },
    },
  },
}
