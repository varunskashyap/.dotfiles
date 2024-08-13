local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- line wrapping
opt.wrap = false

-- search setting
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- cursor line
opt.cursorline = true

-- appearance
-- using https://github.com/MartinSeeler/iterm2-material-design for iterm2
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- files
opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.iskeyword:append("-")
opt.errorbells = false
