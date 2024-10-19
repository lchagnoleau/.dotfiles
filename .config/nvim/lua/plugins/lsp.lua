return {
  {
    'williamboman/mason.nvim',
    lazy = false,
    opts = {},
  },
  {
    'williamboman/mason-lspconfig.nvim',
    lazy = false,
    opts = {
      auto_install = true,
    }
  },
  {
    'neovim/nvim-lspconfig',
    lazy = false,
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.bashls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.rust_analyzer.setup({ })
      lspconfig.cmake.setup({})
      lspconfig.lua_ls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Show Hover information' })
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = 'Go to Definition' })
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { desc = 'Go to Reference' })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Open Code Action' })

    end
  }
}
