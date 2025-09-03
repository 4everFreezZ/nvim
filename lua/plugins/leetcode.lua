	return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html", -- 若有nvim-treesitter则执行
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    opts = {
        -- 个人化配置区域
    },
}
