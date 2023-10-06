local mason = require 'mason'
local mason_lspconfig = require 'mason-lspconfig'
local lspconfig = require 'lspconfig'

mason.setup()
mason_lspconfig.setup {
  ensure_installed = {
    'lua_ls',             -- LSP for Lua language
    'pyright',            -- LSP for Python
    'gopls',              -- LSP for Go
    'grammarly',
  }
}

-- Setup every needed language server in lspconfig
mason_lspconfig.setup_handlers {
  function (server_name)
    lspconfig[server_name].setup {}
  end,
}
