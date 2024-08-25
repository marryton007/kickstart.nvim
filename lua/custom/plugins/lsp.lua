return {
  'neovim/nvim-lspconfig',
  dependencies = { 'hrsh7th/cmp-nvim-lsp' },
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities();
    require('lspconfig').ccls.setup {
      capabilities = capabilities,
    }
		require('lspconfig').svls.setup {
      capabilities = capabilities,
		}
  end,
}
