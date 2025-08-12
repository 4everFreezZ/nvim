return {
  "nvim-tree/nvim-web-devicons",
  priority = 1000,
  config = function()
    require("nvim-web-devicons").setup({
      override_by_filename = {
        ["README.md"] = {
          icon = "",
          color = "#519aba",
          name = "Readme",
        },
        ["readme.md"] = {
          icon = "",
          color = "#519aba",
          name = "Readme",
        },
        ["Readme.md"] = {
          icon = "",
          color = "#519aba",
          name = "Readme",
        },
      },
      default = true,
    })
  end,
}
