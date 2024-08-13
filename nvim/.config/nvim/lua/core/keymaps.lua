local keymap = vim.keymap

-- leader
vim.g.mapleader = " "

-- general keymaps
keymap.set("i", "jk", "<esc>")
keymap.set("n", "<leader>nh", ":nohl<cr>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<cr>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<cr>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<cr>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<cr>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<cr>") --  go to previous tab

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type (install ripgrep)
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
