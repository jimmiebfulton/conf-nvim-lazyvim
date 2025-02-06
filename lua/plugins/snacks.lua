return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        replace_netrw = false,
      },
    },
    -- stylua: ignore
    keys = {
      { "<leader>fe", function() Snacks.picker.explorer({ layout = "default", auto_close = true }) end, desc = "Explorer" },
      { "<leader>fE", function() Snacks.picker.explorer() end, desc = "Explorer Sidebar" },
      { "<leader>fc", desc = "Config" },
      { "<leader>fcc", function() Snacks.picker.files({ dirs = { "~/.config/", }}) end, desc = "Config" },
      { "<leader>fcn", function() Snacks.picker.files({ dirs = { "~/.config/nvim/", }}) end, desc = "Neovim" },
      { "<leader>fcf", function() Snacks.picker.files({ dirs = { "~/.config/fish/", }}) end, desc = "Fish" },
      { "<leader>fcy", function() Snacks.picker.files({ dirs = { "~/.config/yazi/", }}) end, desc = "Yazi" },
      { "<leader>sp",  function() Snacks.picker.pick() end, desc = "Pickers" },
      { "<leader>sP",  function() Snacks.picker.picker_layouts() end, desc = "Picker Layouts" },
      { "<leader>sz",  function() Snacks.picker.zoxide() end, desc = "Zoxide" },
      { "<leader>sZ",  function() Snacks.picker.lazy() end, desc = "Lazy" },
      { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart" },
    },
  },
}
