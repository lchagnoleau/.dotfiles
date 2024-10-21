vim.g.mapleader = ' '

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move bloc to the up' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move bloc to the down' })

vim.keymap.set("n", "n", "nzzzv", { desc = 'Search forward with cursor in the middle' })
vim.keymap.set("n", "N", "Nzzzv", { desc = 'Search backward with cursor in the middle' })

vim.keymap.set('n', '<S-h>', ':bprevious<CR>', { desc = 'Navigate to right buffer' })
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { desc = 'Navigate to left buffer' })
vim.keymap.set('n', '<leader>x', ':bd<CR>', { desc = 'Close buffer' })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Replace current word' })

