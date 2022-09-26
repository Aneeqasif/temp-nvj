-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "pyright", "sumneko_lua", "marksman","bashls",}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end


-- lspconfig.marksman.setup{
--   on_attach = M.on_attach,
--   capabilities = M.capabilities,
-- }

local config = {
    -- disable virtual text
    virtual_text = false,
    -- show signs
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  }


  vim.diagnostic.config(config)

  -- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  --   border = "rounded",
  -- })
  --
  --
  -- -- vim.keymap.set('n', '<space>as', vim.diagnostic.open_float, opts)
  -- vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  --   border = "rounded",
  -- })
