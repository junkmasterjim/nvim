local M = {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = function()
    vim.o.background = 'dark'
    vim.cmd [[colorscheme gruvbox]]
    vim.cmd.hi 'Comment gui=none'
  end,
}

return M
