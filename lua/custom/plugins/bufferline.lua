return {
  'akinsho/bufferline.nvim',
  config = function()
    require('bufferline').setup {
      options = {
        numbers = function(opts)
          return string.format('%s', opts)
        end,
        diagnostics = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        max_name_length = 80,
      },
    }
    vim.keymap.set('n', '<leader>1', '<cmd>BufferLineGoToBuffer 1<cr>', { desc = 'jump to buffer 1'})
    vim.keymap.set('n', '<leader>2', '<cmd>BufferLineGoToBuffer 2<cr>', { desc = 'jump to buffer 2'})
    vim.keymap.set('n', '<leader>3', '<cmd>BufferLineGoToBuffer 3<cr>', { desc = 'jump to buffer 3'})
    vim.keymap.set('n', '<leader>4', '<cmd>BufferLineGoToBuffer 4<cr>', { desc = 'jump to buffer 4'})
    vim.keymap.set('n', '<leader>5', '<cmd>BufferLineGoToBuffer 5<cr>', { desc = 'jump to buffer 5'})
    vim.keymap.set('n', '<leader>6', '<cmd>BufferLineGoToBuffer 6<cr>', { desc = 'jump to buffer 6'})
    vim.keymap.set('n', '<leader>7', '<cmd>BufferLineGoToBuffer 7<cr>', { desc = 'jump to buffer 7'})
    vim.keymap.set('n', '<leader>8', '<cmd>BufferLineGoToBuffer 8<cr>', { desc = 'jump to buffer 8'})
    vim.keymap.set('n', '<leader>9', '<cmd>BufferLineGoToBuffer 9<cr>', { desc = 'jump to buffer 9'})
  end,
}
