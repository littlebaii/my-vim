require('lsp.common')
local on_attach = On_attach
local handlers = Handlers
local capabilities = require('lsp.cmp')
require'lspconfig'.bashls.setup({
	handlers = handlers,
  capabilities = capabilities,
	on_attach = on_attach,
	flags = {
  -- This will be the default in neovim 0.7+
    debounce_text_changes = 150,
  },
	cmd = {'/Users/mirac1e/.local/share/nvim/lsp_servers/bash/node_modules/bash-language-server/bin/main.js', 'start'},
})
