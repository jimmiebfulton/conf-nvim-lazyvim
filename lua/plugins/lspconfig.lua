return {

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          keys = {
            { "<leader>dL", "<cmd>RustLastDebug<cr>", desc = "Last Debug (Rust)" },
            { "<leader>cR", "<cmd>RustHoverAction<cr>", desc = "Code Action (Rust)" },
          },
          settings = {
            ["rust-analyzer"] = {
              completion = {
                snippets = {
                  custom = {
                    ["println2!"] = {
                      ["postfix"] = "println2",
                      ["body"] = {
                        'println!("$0", ${receiver});',
                      },
                      ["description"] = "println!()",
                      ["scope"] = "expr",
                    },
                  },
                },
              },
              cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
                runBuildScripts = true,
              },
              -- Add clippy lints for Rust.
              checkOnSave = {
                allFeatures = true,
                command = "clippy",
                extraArgs = { "--no-deps" },
              },
              procMacro = {
                enable = true,
                ignored = {
                  ["async-trait"] = { "async_trait" },
                  ["napi-derive"] = { "napi" },
                  ["async-recursion"] = { "async_recursion" },
                },
              },
            },
          },
        },
      },
    },
  },
}
