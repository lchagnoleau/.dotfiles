return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  lazy = false,
  opts = {},
  keys = {
    { '<leader>fe', '<cmd>NvimTreeFindFileToggle<cr>', desc = 'Toggle file explorer' },
  },
}
