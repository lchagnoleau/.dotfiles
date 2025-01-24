return {
  "vim-test/vim-test",

  dependencies = {
    "preservim/vimux",
  },

  vim.keymap.set("n", "<leader>Tt", ":TestNearest<CR>", { desc = "Test Nearest" }),
  vim.keymap.set("n", "<leader>Tf", ":TestFile<CR>", { desc = "Test File" }),
  vim.keymap.set("n", "<leader>Ts", ":TestSuite<CR>", { desc = "Test Suite" }),
  vim.keymap.set("n", "<leader>Tl", ":TestLast<CR>", { desc = "Test Last" }),
  vim.keymap.set("n", "<leader>Tv", ":TestVisit<CR>", { desc = "Test Visit" }),

  vim.cmd("let test#strategy = 'vimux'"),
}
