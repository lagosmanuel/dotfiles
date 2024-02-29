vim.keymap.set("n", "<leader>pv", vim.cmd.Explore)
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "q:", "<nop>")

local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})
vim.keymap.set('n', '<leader>r', '<cmd>luafile %<cr>')


vim.keymap.set('n', "<C-h>", '<cmd>TmuxNavigateLeft<cr>')
vim.keymap.set('n', "<C-j>", '<cmd>TmuxNavigateDown<cr>')
vim.keymap.set('n', "<C-k>", '<cmd>TmuxNavigateUp<cr>')
vim.keymap.set('n', "<C-l>", '<cmd>TmuxNavigateRight<cr>')
vim.keymap.set('n', "<C-Space>", '<cmd>TmuxNavigatePrevious<cr>')

