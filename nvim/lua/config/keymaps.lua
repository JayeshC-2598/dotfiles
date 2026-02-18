-- Exit, Save, and Save and Exit
vim.keymap.set("n", "<C-q>", ":q!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-x>", ":wq<CR>", { noremap = true, silent = true })

-- Window Navigation
vim.keymap.set("n", "<C-h>", "<C-W>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-W>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-W>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-W>l", { noremap = true, silent = true })

-- Tab Navigation
vim.keymap.set("n", "<S-l>", "<Cmd>bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-h>", "<Cmd>bp<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>d", "<Cmd>bdelete!<CR>", { noremap = true, silent = true })

-- Select All
vim.keymap.set("n", "<leader>aa", "ggv<S-g><CR>", { noremap = true, silent = true })

-- Quit Searching
vim.keymap.set("n", "<leader>/", ":noh<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>vs", ":vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>hs", ":split<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-h>", "<Cmd>vertical resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-l>", "<Cmd>vertical resize +2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-j>", "<Cmd>resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-k>", "<Cmd>resize +2<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>")

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
