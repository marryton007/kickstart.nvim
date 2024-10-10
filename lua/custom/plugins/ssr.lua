return {
  "cshuaimin/ssr.nvim",
  module = "ssr",
  -- Calling setup is optional.
  config = function()
    require("ssr").setup { }
    vim.keymap.set({ "n", "x" }, "<leader>rr", function() require("ssr").open() end, { desc = 'structural search and replace' })
  end
}
