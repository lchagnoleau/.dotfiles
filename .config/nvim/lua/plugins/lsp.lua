return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {},
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "cmake",
        "bashls",
        "lua_ls",
        "rust_analyzer",
        "pylsp",

        "stylua",
        "clang-format",
        "yamlfmt",
        "shellcheck",

        "cortex-debug",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.clangd.setup({})
      lspconfig.cmake.setup({})
      lspconfig.bashls.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.rust_analyzer.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover information" })
      vim.keymap.set("n", "<leader>[", vim.lsp.buf.definition, { desc = "Go to Definition" })
      vim.keymap.set("n", "<leader>]", ":Telescope lsp_references<cr>", { desc = "Go to Reference" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
    end,
  },
  {
    "nvimtools/none-ls.nvim",

    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.clang_format,
          null_ls.builtins.formatting.yamlfmt,
          null_ls.builtins.diagnostics.cppcheck,

          null_ls.builtins.code_actions.gitsigns,
          null_ls.builtins.code_actions.gitrebase,
        },

        vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format, { desc = "Format file" }),
      })
    end,
  },
}
