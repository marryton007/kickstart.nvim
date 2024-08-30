require('telescope').setup {
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      vertical = {
        height = 0.9,
        preview_cutoff = 0,
        width = 0.9,
      },
      -- other layout configuration here
    },
    mappings = {
      i = { ['<c-enter>'] = 'to_fuzzy_refine' },
    },
  },
}

return {}
