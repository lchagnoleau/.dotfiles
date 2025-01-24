return {
  keys = {
    { "<leader>ww", "<cmd>SessionSearch<CR>", desc = "Session search" },
    { "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session" },
    { "<leader>wa", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle autosave" },
    { "<leader>wr", "<cmd>SessionDelete<CR>", desc = "Session Delete" },
  },

  "rmagatti/auto-session",

  lazy = false,

  opts = {
    auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
  },
}
