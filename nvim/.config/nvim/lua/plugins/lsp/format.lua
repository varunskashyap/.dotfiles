local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    cpp = { "clang-format" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    json = { "prettier" },
    lua = { "stylua" },
    python = { "isort", "black" },
    typescript = { "prettier" },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  },
})

vim.keymap.set({ "n", "v" }, "<leader>fmt", function()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  })
end, { desc = "Format file or range (in visual mode)" })
