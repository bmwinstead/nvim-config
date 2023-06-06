return {
  {
    "ruifm/gitlinker.nvim",
    config = function(_, opts)
      require("gitlinker").setup({
        opts = opts,
        callbacks = {
          ["git.corp.tanium.com"] = require("gitlinker.hosts").get_github_type_url,
        },
      })
    end,
  },
}
