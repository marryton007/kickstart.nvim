return {
  "akinsho/bufferline.nvim",
  dependencies = { 'folke/which-key.nvim' },
  config = function ()
    require('bufferline').setup {
      options = {
        numbers = function(opts)
          return string.format('%s', opts.ordinal)
        end,
        diagnostics = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        max_name_length = 80,
      },
    }
    require('which-key').register{
      -- " 使用 <leader> [number] 切换到第 [number] 个 buffer
      ["<leader>"] = {
        ["1"] = { "<cmd>BufferLineGoToBuffer 1<cr>", "jump to buffer 1" },
        ["2"] = { "<cmd>BufferLineGoToBuffer 2<cr>", "jump to buffer 2" },
        ["3"] = { "<cmd>BufferLineGoToBuffer 3<cr>", "jump to buffer 3" },
        ["4"] = { "<cmd>BufferLineGoToBuffer 4<cr>", "jump to buffer 4" },
        ["5"] = { "<cmd>BufferLineGoToBuffer 5<cr>", "jump to buffer 5" },
        ["6"] = { "<cmd>BufferLineGoToBuffer 6<cr>", "jump to buffer 6" },
        ["7"] = { "<cmd>BufferLineGoToBuffer 7<cr>", "jump to buffer 7" },
        ["8"] = { "<cmd>BufferLineGoToBuffer 8<cr>", "jump to buffer 8" },
        ["9"] = { "<cmd>BufferLineGoToBuffer 9<cr>", "jump to buffer 9" },
        ["0"] = { "<cmd>BufferLineGoToBuffer 10<cr>", "jump to buffer 10" },
      }
    }
  end
}
