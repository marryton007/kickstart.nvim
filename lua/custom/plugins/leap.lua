return {
  {
    "ggandor/leap.nvim",
    lazy = true,
    event = "BufReadPost",
    config = function()
      require("leap").opts.highlight_unlabeled_phase_one_targets = true
      vim.keymap.set({ "x", "o", "n" }, "s", "<Plug>(leap-forward-to)")
      vim.keymap.set({ "x", "o", "n" }, "S", "<Plug>(leap-backward-to)")
    end,
  },
}
