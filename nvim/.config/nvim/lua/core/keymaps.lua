local keymap = vim.keymap

-- leader
vim.g.mapleader = " "

-- general keymaps
keymap.set("i", "jk", "<esc>")
keymap.set("n", "<leader>nh", ":nohl<cr>")

-- move lines up or down
keymap.set("n", "K", "ddkP") -- move line up
keymap.set("n", "J", "ddp") -- move line down

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<cr>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<cr>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<cr>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<cr>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<cr>") --  go to previous tab
