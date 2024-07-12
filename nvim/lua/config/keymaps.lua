-- Exit, Save, and Save and Exit
vim.keymap.set('n', '<C-q>', ':q!<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-x>', ':wq<CR>', {noremap = true, silent = true})

-- Split Vim Windows
vim.keymap.set('n', '<leader>-', ':split<CR>', {})
vim.keymap.set('n', '<leader>|', ':vsplit<CR>', {})

-- Window Navigation
vim.keymap.set('n', '<leader>h', '<C-w>h', {})
vim.keymap.set('n', '<leader>j', '<C-w>j', {})
vim.keymap.set('n', '<leader>k', '<C-w>k', {})
vim.keymap.set('n', '<leader>l', '<C-w>l', {})

-- Tab Navigation
vim.keymap.set('n', '<Tab>', ':bn<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<S-Tab>', ':bp<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>d', ':bd<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader><C-a>', 'gg<S-v>g<CR>', {noremap = true, silent = true})
