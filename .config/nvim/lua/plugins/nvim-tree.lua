return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("nvim-tree").setup({})
    vim.keymap.set("n", "<leader>fe", "<cmd>NvimTreeFindFileToggle<CR>")
  end,
}

