local nvimtree = require("nvim-tree")

-- recommended setting from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup()

local keymap = vim.keymap
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
