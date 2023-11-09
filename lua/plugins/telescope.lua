return {

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>bb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Find Buffers" },
      { "<leader>bg", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Fuzzy Find" },

      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep Files" },
      { "<leader>fb", "<cmd>Telescope file_browser<cr>", desc = "File Browser" },
      {
        "<leader>fcn",
        ":lua require('telescope.builtin').find_files({ cwd = '~/.config/nvim/' })<cr>",
        desc = "NeoVim",
      },
      {
        "<leader>fcw",
        ":lua require('telescope.builtin').find_files({ cwd = '~/.config/wezterm/' })<cr>",
        desc = "WezTerm",
      },
      {
        "<leader>fcf",
        ":lua require('telescope.builtin').find_files({ cwd = '~/.config/fish/' })<cr>",
        desc = "Fish",
      },
      {
        "<leader>fca",
        ":lua require('telescope.builtin').find_files({ cwd = '~/.archetect/etc/' })<cr>",
        desc = "Archetect",
      },
      {
        "<leader>fp",
        ":lua require'telescope'.extensions.project.project{ display_type = 'minimal' }<cr>",
        desc = "Projects Browser",
      },
      { "<leader>su", "<cmd>Telescope undo<cr>", desc = "Undo" },
      { "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Fuzzy Find" },
    },
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-c>"] = "close",
            ["<C-Left>"] = "preview_scrolling_left",
            ["<C-Right>"] = "preview_scrolling_right",
            ["<C-Up>"] = "preview_scrolling_up",
            ["<C-Down>"] = "preview_scrolling_down",
            ["<Left>"] = "results_scrolling_left",
            ["<Right>"] = "results_scrolling_right",
          },
          n = {
            ["<C-c>"] = "close",
            ["<C-Left>"] = "preview_scrolling_left",
            ["<C-Right>"] = "preview_scrolling_right",
            ["<C-Up>"] = "preview_scrolling_up",
            ["<C-Down>"] = "preview_scrolling_down",
            ["<Left>"] = "results_scrolling_left",
            ["<Right>"] = "results_scrolling_right",
          },
        },
      },
      extensions = {
        defaults = {
          layout_config = {
            vertical = { width = 0.3 },
            -- other layout configuration here
          },
          -- other defaults configuration here
        },
        file_browser = {
          theme = "ivy",
          mappings = {
            ["i"] = {
              -- your custom insert mode mappings
            },
            ["n"] = {
              -- your custom normal mode mappings
            },
          },
          layout_config = {
            vertical = { width = 0.9 },
          },
        },
        project = {
          base_dirs = {
            { path = "~/projects/rust", max_depth = 2 },
            { path = "~/projects/archetypes/", max_depth = 2 },
            { path = "~/orgs/nax-platform/", max_depth = 2 },
          },
          hidden_files = false, -- default: false
          theme = "dropdown",
          order_by = "desc",
          search_by = "title",
          on_project_selected = function(prompt_bufnr)
            -- Do anything you want in here. For example:
            require("telescope._extensions.project.actions").change_working_directory(prompt_bufnr, true)
            require("telescope.builtin").find_files()
          end,
          layout_config = {
            vertical = { width = 0.9 },
          },
        },
        undo = {
          use_delta = true,
          use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
          side_by_side = false,
          diff_context_lines = vim.o.scrolloff,
          entry_format = "state #$ID, $STAT, $TIME",
          time_format = "",
          mappings = {
            i = {
              -- IMPORTANT: Note that telescope-undo must be available when telescope is configured if
              -- you want to replicate these defaults and use the following actions. This means
              -- installing as a dependency of telescope in it's `requirements` and loading this
              -- extension from there instead of having the separate plugin definition as outlined
              -- above.
              ["<cr>"] = function()
                require("telescope-undo.actions").yank_additions()
              end,
              ["<S-cr>"] = function()
                require("telescope-undo.actions").yank_deletions()
              end,
              ["<C-cr>"] = function()
                require("telescope-undo.actions").restore()
              end,
            },
          },
        },
        docker = {
          -- These are the default values
          theme = "ivy",
          binary = "docker", -- in case you want to use podman or something
          compose_binary = "docker compose",
          buildx_binary = "docker buildx",
          machine_binary = "docker-machine",
          log_level = vim.log.levels.INFO,
          init_term = "tabnew", -- "vsplit new", "split new", ...
          -- NOTE: init_term may also be a function that receives
          -- a command, a table of env. variables and cwd as input.
          -- This is intended only for advanced use, in case you want
          -- to send the env. and command to a tmux terminal or floaterm
          -- or something other than a built in terminal.
        },
      },
      pickers = {
        find_files = {
          mappings = {},
        },
        buffers = {
          mappings = {
            n = {
              ["dd"] = "delete_buffer",
            },
          },
        },
      },
    },
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },

  {
    "nvim-telescope/telescope-project.nvim",
    enabled = true,
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension("project")
    end,
  },

  {
    "lpoto/telescope-docker.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension("docker")
    end,
  },

  {
    "debugloop/telescope-undo.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension("undo")
    end,
  },
}
