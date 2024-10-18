return {
  keys = {
    { '<leader>fe', '<cmd>NvimTreeFindFileToggle<CR>', desc = 'Toggle Nvim Tree' },
  },

  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },

  opts = {},
}

