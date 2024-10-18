return {
  {
    'williamboman/mason.nvim',
    opts = {},
  },
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {
      auto_install = true,
    }
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.bashls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.cmake.setup({})
      lspconfig.lua_ls.setup({})

      vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', { desc = 'Show hover information' })
      vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', { desc = 'Code action' })
      vim.keymap.set('n', 'gR', '<cmd>Telescope lsp_references<cr>', { desc = 'Show references' })
      vim.keymap.set('n', 'gD', '<cmd>vim.lsp.buf.declaration<cr>', { desc = 'Go to declaration' })
      vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', { desc = 'Go to definition' })
      vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>', { desc = 'Go to implementation' })
      vim.keymap.set('n', 'gt', '<cmd>Telescope lsp_type_definitions<cr>', { desc = 'Go to type definition' })
      vim.keymap.set('n', 'g', vim.lsp.buf.signature_help, { desc = 'Show signature help' })
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Smart rename' })
      vim.keymap.set('n', '<leader>D', '<cmd>Telescope diagnostics bufnr=0<cr>', { desc = 'Show diagnostics' })
      vim.keymap.set('n', 'F', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', { desc = 'Format' })
      vim.keymap.set('n', '<leader>rs', ':LspRestart<CR>', { desc = 'Restart LSP' })
    end
  }
}
