return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Git preview hunk" })
      vim.keymap.set(
        "n",
        "<leader>gt",
        ":Gitsigns toggle_current_line_blame<CR>",
        { desc = "Git toggle line blame" }
      )
    end,
  },
  {
    "sindrets/diffview.nvim",

    vim.keymap.set("n", "<leader>dfh", ":DiffviewFileHistory %<CR>", { desc = "Diff file history" }),
    vim.keymap.set("n", "<leader>do", ":DiffviewOpen<CR>", { desc = "Diff open" }),
    vim.keymap.set("n", "<leader>dh", ":DiffviewFileHistory<CR>", { desc = "Diff history" }),
    vim.keymap.set("n", "<leader>dc", ":DiffviewClose<CR>", { desc = "Diff close" }),
  },
}
