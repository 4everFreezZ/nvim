return {
  "navarasu/onedark.nvim",
  priority = 1000, -- 确保在其他启动插件之前加载
  config = function()
    local transparent = true -- 设置为 false 则不透明

    require("onedark").setup({
      style = "dark", -- 可选: 'darker', 'deep', 'cool', 'warm', 'warmer', 'light'
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
        transparent = true, -- 让 onedark 控制 lualine 背景透明
      },

      -- 禁用特定插件的背景 (移除 "lualine")
      disable_background = {
        "cmp",
        "dap",
        "gitsigns",
        "which-key",
        "nvim-tree",
        -- "lualine", -- 移除这一行，让 onedark 的 lualine.transparent 控制
      },

      -- 覆盖颜色
      -- colors = {
      --   bg = "#1e222a",
      --   fg = "#abb2bf",
      -- },

      -- 覆盖高亮组
      -- highlight_groups = {
      --   ["@comment"] = { fg = "#5C6370", italic = true },
      -- },
    })

    -- 启用主题
    vim.cmd.colorscheme("onedark")
  end,
}
