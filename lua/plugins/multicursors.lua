return {
  -- lazy.nvim:
  {
    "mg979/vim-visual-multi",
    config = function()
      vim.cmd([[
        let g:VM_maps = {}
        let g:VM_maps["Undo"] = 'u'
        let g:VM_maps["Redo"] = '<C-r>'
      ]])
    end,
  },
}
