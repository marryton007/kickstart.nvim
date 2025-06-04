local servers = {
  ccls = {},
  pyright = {},
  -- svls = {},
  zls = {},
}

local lspconfig = require 'lspconfig'
local cap = require('blink.cmp').get_lsp_capabilities()

for k, v in pairs(servers) do
  v.capabilities = vim.tbl_deep_extend('force', {}, cap, v.capabilities or {})
  lspconfig[k].setup(v)
end


return {}
