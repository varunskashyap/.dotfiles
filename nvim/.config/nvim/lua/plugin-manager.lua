local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- code
  "jiangmiao/auto-pairs",
  "sudar/comments.vim",

  "nvim-tree/nvim-tree.lua", -- file explorer
  "christoomey/vim-tmux-navigator", -- window navigation

  { "folke/which-key.nvim", event = "VeryLazy" }, -- shows keymaps

  -- fuzzy finding
  { "nvim-telescope/telescope-fzf-native.nvim", build = 'make' },
  { "nvim-telescope/telescope.nvim", branch = "0.1.x" },

  -- UI
  { "folke/noice.nvim",
    dependencies = { 
      "MunifTanjim/nui.nvim",
      { "rcarriga/nvim-notify", opts = { background_colour = "#000000" }  }
    }
  },
  { "goolord/alpha-nvim", event = "VimEnter" }, -- Greeter
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } }, -- status line

  -- Competitest
  { "xeluxee/competitest.nvim", dependencies = "MunifTanjim/nui.nvim" },
})
