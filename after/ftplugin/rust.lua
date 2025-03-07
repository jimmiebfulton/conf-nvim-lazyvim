local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set("n", "<leader>aa", function()
  vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
  -- vim.lsp.buf.codeAction() -- if you don't want grouping.
end, { silent = true, buffer = bufnr })

vim.keymap.set(
  "n",
  "<leader>ak", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp({ "hover", "actions" })
    vim.cmd.RustLsp({ "hover", "actions" })
  end,
  { silent = false, buffer = bufnr }
)
