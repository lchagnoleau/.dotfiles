return {
  {
    'folke/tokyonight.nvim',

    lazy = false,
    priority = 1000,

    opts = {
      style = 'night',
    },
  },
  {
    'navarasu/onedark.nvim',

    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').setup {
          style = 'deep',
      }
      require('onedark').load()
    end
  },
  {
    'EdenEast/nightfox.nvim',

    lazy = false,
    priority = 1000,

    opts = {},
  }
}
