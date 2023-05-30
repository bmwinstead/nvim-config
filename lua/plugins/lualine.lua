local navic = require("nvim-navic")
return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      return {
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { "filename" },
          lualine_x = { { navic.get_location, cond = navic.is_available } },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      }
    end,
  },
}
