return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>ghp", ":Gitsigns preview_hunk<CR>", { desc = "Git hunk preview" })
      vim.keymap.set("n", "<leader>gtb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle Git blame" })
    end,
  },
  {
    "sindrets/diffview.nvim",

    vim.keymap.set("n", "<leader>gh", ":DiffviewFileHistory<CR>", { desc = "Git history" }),
    vim.keymap.set("n", "<leader>gfh", ":DiffviewFileHistory %<CR>", { desc = "Git file history" }),
    vim.keymap.set("n", "<leader>gdo", ":DiffviewOpen<CR>", { desc = "Git open diff panel" }),
    vim.keymap.set("n", "<leader>gdc", ":DiffviewClose<CR>", { desc = "Git close diff panel" }),
  },
  {
    "akinsho/git-conflict.nvim",
    config = true,
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
      "ibhagwan/fzf-lua",
      "echasnovski/mini.pick",
    },
    config = true,
  },
}
