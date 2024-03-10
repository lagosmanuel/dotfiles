vim.keymap.set("n", "<leader>pv", vim.cmd.Explore)
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("t", "<esc>", "<C-\\><C-N>")

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {})
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {})
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {})
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {})

vim.keymap.set('n', '<leader>r', '<cmd>luafile %<cr>')

vim.keymap.set('n', "<C-h>", '<cmd>TmuxNavigateLeft<cr>')
vim.keymap.set('n', "<C-j>", '<cmd>TmuxNavigateDown<cr>')
vim.keymap.set('n', "<C-k>", '<cmd>TmuxNavigateUp<cr>')
vim.keymap.set('n', "<C-l>", '<cmd>TmuxNavigateRight<cr>')
vim.keymap.set('n', "<C-Space>", '<cmd>TmuxNavigatePrevious<cr>')
