return {

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>bb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Find Buffers" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fb", "<cmd>Telescope file_browser<cr>", desc = "File Browser" },
      { "<leader>fp", "<cmd>Telescope project<cr>", desc = "File Browser" },
      -- {
      --   "<leader>fp",
      --   ":lua require'telescope'.extensions.project.project{ display_type = 'full' }<cr>",
      --   desc = "Projects Browser",
      -- },
    },
    opts = {
      extensions = {
        file_browser = {
          theme = "ivy",
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              -- your custom insert mode mappings
            },
            ["n"] = {
              -- your custom normal mode mappings
            },
          },
        },
        project = {
          base_dirs = {
            { "~/projects/rust", max_depth = 2 },
            { "~/projects/archetypes/", max_depth = 2 },
            { "~/orgs/nax-platform/", max_depth = 2 },
          },
          hidden_files = false, -- default: false
          theme = "dropdown",
          order_by = "desc",
          search_by = "title",
          -- default for on_project_selected = find project files
          on_project_selected = function(prompt_bufnr)
            -- Do anything you want in here. For example:
            require("telescope._extensions.project.actions").change_working_directory(prompt_bufnr, false)
          end,
          mappings = {
            ["i"] = {
              ["<C-e>"] = function(prompt_bufnr)
                require("neo-tree").toggle()
              end,
            },
            ["n"] = {
              -- your custom normal mode mappings
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
    config = function()
      require("telescope").load_extension("project")
    end,
  },

  {
    "lpoto/telescope-docker.nvim",
    config = function()
      require("telescope").load_extension("docker")
    end,
  },
}
