return {
  "cshuaimin/ssr.nvim",
  module = "ssr",
  -- Calling setup is optional.
  config = function()
    require("ssr").setup { }
    vim.keymap.set({ "n", "x" }, "<leader>sr", function() require("ssr").open() end)
  end
}
