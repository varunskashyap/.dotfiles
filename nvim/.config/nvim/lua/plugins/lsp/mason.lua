local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_tool_installer = require("mason-tool-installer")

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

mason_lspconfig.setup({
  -- list of servers for mason to install
  ensure_installed = {
    "clangd",
    "jsonls",
    "lua_ls",
    "pyright",
    "tsserver",
  },
  -- auto install configured servers (with lspconfig)
  automatic_installation = true,
})

mason_tool_installer.setup({
  ensure_installed = {
    "clang-format", -- cpp formatter
    "black", -- python formatter
    "prettier", -- prettier formatter
    "stylua", -- lua formatter
    "isort", -- python formatter
  },
})
