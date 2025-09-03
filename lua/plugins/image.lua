return {
  "3rd/image.nvim",
  opts = {
    backend = "ueberzug", -- 更改为 ueberzug
    integrations = {
      markdown = {
        enabled = true,
      },
      -- 为 leetcode.nvim 添加集成
      leetcode = {
        enabled = true,
        filetypes = { "leetcode" },
      },
    },
    max_height_window_percentage = 50,
  },
}