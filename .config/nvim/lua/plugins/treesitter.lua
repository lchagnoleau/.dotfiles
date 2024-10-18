return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local treesitter = require('nvim-treesitter.configs')

    treesitter.setup({
      highlight = { enable = true },
      indent = { enable = true },

      ensure_installed = {
        'c',
        'bash',
        'dockerfile',
        'gitignore',
        'html',
        'javascript',
        'json',
        'lua',
        'markdown',
        'markdown_inline',
        'python',
        'rst',
        'rust',
        'typescript',
        'vim',
        'yaml',
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<C-space>',
          node_incremental = '<C-space>',
          scope_incremental = false,
          node_decremental = '<bs>',
        },
      },
    })
  end,
}
