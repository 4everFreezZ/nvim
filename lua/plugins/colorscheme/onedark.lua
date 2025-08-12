return {
  "navarasu/onedark.nvim",
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("onedark").setup({
      style = "dark",
      transparent = transparent,
      term_colors = true, -- 配置终端颜色
      ending_tildes = true, -- 显示文件末尾的波浪线
      cmp_itemkind_reverse = false, -- 反转 cmp itemkind 颜色

      -- 自定义样式 (将 code_styles 改为 styles)
      styles = {
        comments = { "italic" },
        keywords = { "bold" },
        functions = { "italic", "bold" },
        variables = { "bold" },
        -- sidebars 和 floats 的透明度设置
        sidebars = transparent and "transparent" or "dark",
        floats = transparent and "transparent" or "dark",
      },

      lualine = {
        transparent = false, -- 让 onedark 控制 lualine 背景透明
      },

      -- 禁用特定插件的背景 (移除 "lualine")
      disable_background = {
        "cmp",
        "dap",
        "gitsigns",
      },
    })
    -- Enable theme
    require("onedark").load()
  end,
}
