return {
  {
    "navarasu/onedark.nvim",
    lazy = true,
    priority = 1000, -- 确保主题在其他UI插件之前加载
    opts = {
      style = "darker", -- 您可以在这里调整 onedark 的风格
      transparent = false, -- 设置透明背景
      term_colors = false, -- 在终端中启用主题颜色
      ending_tildes = false, -- 在文件末尾显示波浪线
      cmp_itemkind_reverse = false, -- 反转 cmp 项目类型图标的颜色

      -- 您可以在这里添加对特定插件的集成
      integrations = {
        cmp = true,
        gitsigns = true,
        nvim_tree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- 添加更多...
      },

      -- 自定义颜色 (可选)
      colors = {
        bg0 = "#282C34",
        -- ...
      },

      -- 自定义高亮组 (可选)
      highlights = {
        ["@function"] = { fg = "#61AFEF", bold = true },
        -- ...
      },
    },
  },
  -- tokyonight
  {
    "folke/tokyonight.nvim",
    -- priority = 1000,
    config = function()
      local transparent = false -- set to true if you would like to enable transparency

      local bg = "#011628"
      local bg_dark = "#011423"
      local bg_highlight = "#143652"
      local bg_search = "#0A64AC"
      local bg_visual = "#275378"
      local fg = "#CBE0F0"
      local fg_dark = "#B4D0E9"
      local fg_gutter = "#627E97"
      local border = "#547998"

      return {
        style = "night",
        transparent = transparent,
        styles = {
          sidebars = transparent and "transparent" or "dark",
          floats = transparent and "transparent" or "dark",
        },
        on_colors = function(colors)
          colors.bg = bg
          colors.bg_dark = transparent and colors.none or bg_dark
          colors.bg_float = transparent and colors.none or bg_dark
          colors.bg_highlight = bg_highlight
          colors.bg_popup = bg_dark
          colors.bg_search = bg_search
          colors.bg_sidebar = transparent and colors.none or bg_dark
          colors.bg_statusline = transparent and colors.none or bg_dark
          colors.bg_visual = bg_visual
          colors.border = border
          colors.fg = fg
          colors.fg_dark = fg_dark
          colors.fg_float = fg
          colors.fg_gutter = fg_gutter
          colors.fg_sidebar = fg_dark
        end,
      }
    end,
  },
  -- catppuccin
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        fzf = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        snacks = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
          end
        end,
      },
    },
  },
}
