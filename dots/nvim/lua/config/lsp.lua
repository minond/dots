local lsp_zero = require('lsp-zero')

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "kotlin_language_server",
  },
  handlers = {
    lsp_zero.default_setup,
  }
})

require("mason-tool-installer").setup({
  ensure_installed = {
    "ktlint",
  }
})

require("java").setup()
require("lspconfig").jdtls.setup({})

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
