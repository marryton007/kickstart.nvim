local cmp = require 'cmp'
local luasnip = require 'luasnip'

cmp.setup {
  mapping = cmp.mapping.preset.insert {
    -- If you prefer more traditional completion keymaps,
    -- you can uncomment the following lines
    ['<CR>'] = cmp.mapping.confirm { select = true },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expandable() then
        luasnip.expand()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, {
      'i',
      's',
    }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {
      'i',
      's',
    }),
  },
}

return {
  'rafamadriz/friendly-snippets',
  config = function()
    require('luasnip.loaders.from_vscode').lazy_load()
  end,
}
