-- Exit, Save, and Save and Exit
vim.keymap.set('n', '<C-q>', ':q!<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-x>', ':wq<CR>', {noremap = true, silent = true})

-- Window Navigation
vim.keymap.set('n', '<leader>h', '<C-w>h', {})
vim.keymap.set('n', '<leader>j', '<C-w>j', {})
vim.keymap.set('n', '<leader>k', '<C-w>k', {})
vim.keymap.set('n', '<leader>l', '<C-w>l', {})

-- Tab Navigation
vim.keymap.set('n', '<Tab>', ':bn<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<S-Tab>', ':bp<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>d', ':bd<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>aa', 'ggv<S-g><CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>/', ':noh<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>hf', ':Telescope find_files hidden=true no_ignore=true<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ll', ':$<CR>', {noremap = true, silent = true})

vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
