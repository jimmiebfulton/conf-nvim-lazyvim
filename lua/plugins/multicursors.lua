return {
  {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    keys = {
      {
        "<leader>mA",
        mode = { "n", "x" },
        function()
          require("multicursor-nvim").matchAllAddCursors()
        end,
        desc = "All Cursors",
      },
      -- {
      --   "<leader>mm",
      --   mode = { "n" },
      --   function()
      --     require("multicursor-nvim").operator()
      --   end,
      --   desc = "Select Cursors",
      -- },
      {
        "<leader>mc",
        mode = { "n", "x" },
        function()
          require("multicursor-nvim").clearCursors()
        end,
        desc = "Clear Cursors",
      },
      {
        "<leader>mw",
        mode = { "n", "x" },
        function()
          -- In normal/visual mode, press `mcwif` will create a cursor in every match of
          -- the word captured by `iw` (or visually selected range) inside the bigger
          -- range specified by `ap`. Useful to replace a word inside a function, e.g. mwif.
          require("multicursor-nvim").operator({ motion = "iw", visual = true })
          -- Or you can pass a pattern, press `mwi{` will select every \w,
          -- basically every char in a `{ a, b, c, d }`.
          -- mc.operator({ pattern = [[\<\w]] })
        end,
        desc = "Cursor in Word",
      },
      {
        "<leader>mn",
        mode = { "n", "x" },
        function()
          require("multicursor-nvim").lineAddCursor(1)
        end,
        desc = "Cursor Next",
      },
      {
        "<leader>mN",
        mode = { "n", "x" },
        function()
          require("multicursor-nvim").lineSkipCursor(1)
        end,
        desc = "Cursor Next",
      },
      {
        "<leader>mp",
        mode = { "n", "x" },
        function()
          require("multicursor-nvim").lineAddCursor(-1)
        end,
        desc = "Cursor Previous",
      },
      {
        "<leader>mP",
        mode = { "n", "x" },
        function()
          require("multicursor-nvim").lineSkipCursor(-1)
        end,
        desc = "Cursor Previous",
      },
      {
        "<leader>m<space>",
        mode = { "n", "x" },
        function()
          require("which-key").show({
            keys = "<leader>m",
            loop = true, -- this will keep the popup open until you hit <esc>
          })
        end,
        desc = "Hydra",
      },
      {
        "<leader>mj",
        mode = { "n", "x" },
        function()
          require("multicursor-nvim").skipCursor("j")
        end,
        desc = "Skip Cursor Down",
      },
      {
        "<leader>mk",
        mode = { "n", "x" },
        function()
          require("multicursor-nvim").skipCursor("k")
        end,
        desc = "Skip Cursor Up",
      },
      {
        "<leader>mh",
        mode = { "n", "x" },
        function()
          require("multicursor-nvim").skipCursor("h")
        end,
        desc = "Skip Cursor Left",
      },
      {
        "<leader>ml",
        mode = { "n", "x" },
        function()
          require("multicursor-nvim").skipCursor("l")
        end,
        desc = "Skip Cursor Right",
      },
      {
        "<leader>mt",
        mode = { "n", "x" },
        function()
          require("multicursor-nvim").toggleCursor()
        end,
        desc = "Toggle Cursor",
      },
      {
        "<leader>mD",
        mode = { "n", "x" },
        function()
          require("multicursor-nvim").duplicateCursors()
        end,
        desc = "Duplicate Cursors",
      },
      {
        "<leader>me",
        mode = { "n" },
        function()
          require("multicursor-nvim").enableCursors()
        end,
        desc = "Enable Cursors",
      },
      {
        "<leader>md",
        mode = { "n" },
        function()
          require("multicursor-nvim").disableCursors()
        end,
        desc = "Disable Cursors",
      },
      {
        "<leader>ma",
        mode = { "n" },
        function()
          require("multicursor-nvim").alignCursors()
        end,
        desc = "Restore Cursors",
      },
      {
        "<leader>mv",
        mode = { "n" },
        function()
          require("multicursor-nvim").restoreCursors()
        end,
        desc = "Restore Cursors",
      },
      {
        "<leader>mM",
        mode = { "x" },
        function()
          require("multicursor-nvim").matchCursors()
        end,
        desc = "Match in Visual by Regex",
      },
      {
        "<leader>mS",
        mode = { "x" },
        function()
          require("multicursor-nvim").splitCursors()
        end,
        desc = "Split Visual by Regex",
      },
      {
        "<leader>mm",
        mode = { "n", "x" },
        function()
          if not require("multicursor-nvim").cursorsEnabled() then
            require("multicursor-nvim").enableCursors()
          else
            require("multicursor-nvim").disableCursors()
          end
        end,
        desc = "Toggle Multicursors",
      },
    },

    config = function()
      local mc = require("multicursor-nvim")

      mc.setup()

      local set = vim.keymap.set

      -- Add and remove cursors with control + left click.
      set("n", "<c-leftmouse>", mc.handleMouse)
      set("n", "<c-leftdrag>", mc.handleMouseDrag)

      -- Append/insert for each line of visual selections.
      set("x", "I", mc.insertVisual)
      set("x", "A", mc.appendVisual)

      -- Jumplist support
      set({ "x", "n" }, "<c-i>", mc.jumpForward)
      set({ "x", "n" }, "<c-o>", mc.jumpBackward)

      -- Rotate the main cursor.
      set({ "n", "x" }, "<left>", mc.prevCursor)
      set({ "n", "x" }, "<right>", mc.nextCursor)

      -- Customize how cursors look.
      local hl = vim.api.nvim_set_hl
      hl(0, "MultiCursorCursor", { link = "Cursor" })
      hl(0, "MultiCursorVisual", { link = "Visual" })
      hl(0, "MultiCursorSign", { link = "SignColumn" })
      hl(0, "MultiCursorMatchPreview", { link = "Search" })
      hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
      hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
      hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
    end,
  },
}
