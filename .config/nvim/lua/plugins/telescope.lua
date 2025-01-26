return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-telescope/telescope-ui-select.nvim",
      "nvim-lua/plenary.nvim",
      { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
    },
    config = function()
      require("telescope").setup({
        pickers = {
          find_files = {
            hidden = true,
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")

      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, { desc = "Telescope old files" })
      vim.keymap.set("n", "<leader>ff", builtin.git_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "Telescope grep string" })
      vim.keymap.set("n", "<leader>ft", builtin.treesitter, { desc = "Telescope treesitter list" })
      vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "Telescope references" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
      vim.keymap.set("n", "<leader>gsc", builtin.git_commits, { desc = "Git search commits" })
      vim.keymap.set("n", "<leader>gst", builtin.git_status, { desc = "Git status" })
      vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Git search branches" })
      vim.keymap.set("n", "<leader>cs", builtin.colorscheme, { desc = "Select Colorscheme" })
    end,
  },
}
