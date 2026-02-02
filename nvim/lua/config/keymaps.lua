-- Exit, Save, and Save and Exit
vim.keymap.set("n", "<C-q>", ":q!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-x>", ":wq<CR>", { noremap = true, silent = true })

-- Window Navigation
vim.keymap.set("n", "<leader>h", "<C-w>h", {})
vim.keymap.set("n", "<leader>j", "<C-w>j", {})
vim.keymap.set("n", "<leader>k", "<C-w>k", {})
vim.keymap.set("n", "<leader>l", "<C-w>l", {})

-- Tab Navigation
-- vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<Cmd>bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<Cmd>bp<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>d", "<Cmd>bdelete!<CR>", { noremap = true, silent = true }) -- Or better: mini.bufremove

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

-- Copy, Paste
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
vim.keymap.set("n", "<leader>p", '"+P')
