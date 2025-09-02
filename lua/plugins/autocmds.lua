-- ~/.config/nvim/lua/plugins/disable-spellcheck.lua
return {
  -- A name for our custom rule, this can be anything unique
  "my-custom-rules/disable-spellcheck",
  -- Use the "FileType" event to trigger this setup.
  -- This means it will run after a file is opened and its type is detected.
  event = "FileType",

  -- The config function is where we define the autocommand
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "markdown", "gitcommit", "text" },
      callback = function()
        vim.opt_local.spell = false
      end,
      desc = "Disable spell check for specific file types.",
    })
  end,
}
