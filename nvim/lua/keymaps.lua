-- undo/redo
vim.keymap.set("n", "<C-z>", "u", { noremap = true })
vim.keymap.set("n", "<C-y>", "<C-r>", { noremap = true })

-- config files
vim.keymap.set("n", "<leader>ec", ":cd ~/.config/nvim/lua")

-- directories
vim.keymap.set("n", "<leader>dc", ":cd ~/Documentos")

-- file explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- indent
vim.keymap.set("n", "<S-Tab>", "<<", { noremap = true, silent = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })

