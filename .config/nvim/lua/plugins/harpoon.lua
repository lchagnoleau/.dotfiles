-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

return
{
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add to harpoon" })
        vim.keymap.set("n", "<leader>r", function() harpoon:list():remove() end, { desc = "Remove from harpoon" })
        vim.keymap.set("n", "<leader>e", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })
        vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "navigate to harpoon 1" })
        vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "navigate to harpoon 2" })
        vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "navigate to harpoon 3" })
        vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "navigate to harpoon 4" })

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<C-p>", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)
    end,
}

