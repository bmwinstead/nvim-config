return {
  {
    "ruifm/gitlinker.nvim",
    config = function(_, opts)
      require("gitlinker").setup({
        opts = opts,
        callbacks = {},
      })
    end,
  },
}
