-- ~/.config/nvim/lua/config/autocmds.lua
local augroup = vim.api.nvim_create_augroup("user_cmds", { clear = true })

-- 在打开特定文件类型时，强制关闭拼写检查
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = { "markdown", "gitcommit", "text" }, -- 这里可以按需添加其他文件类型
  callback = function()
    vim.opt_local.spell = false
  end,
  desc = "Disable spell check for specific file types.",
})
