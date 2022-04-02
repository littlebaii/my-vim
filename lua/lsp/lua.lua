require('lsp.common')
local on_attach = On_attach
local handlers = Handlers
local runtime_path = vim.split(package.path, ';')
local capabilities = require('lsp.cmp')

table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
	cmd = {'/Users/mirac1e/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/lua-language-server'},
	capabilities = capabilities,
	handlers = handlers,
	on_attach = on_attach,
	flags = {
    -- This will be the default in neovim 0.7+
    debounce_text_changes = 150,
  },
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
