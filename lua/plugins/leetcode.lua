return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html", -- 若有nvim-treesitter则执行
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",

    -- optional
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    -- 个人化配置区域
    lang = "java",
    cn = { -- leetcode.cn
      enabled = true, ---@type boolean
      translator = true, ---@type boolean
      translate_problems = true, ---@type boolean
    },
    ---@type boolean
    logging = true,

    storage = {
      home = vim.fn.stdpath("data") .. "/leetcode", -- 数据存储
      cache = vim.fn.stdpath("cache") .. "/leetcode", -- 缓存目录
    },

    plugins = {
      non_standalone = true,
    },

    image_support = false,
  },
}
