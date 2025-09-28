return {
        "echasnovski/mini.nvim",
        config = function()
            require("mini.ai").setup()
            require("mini.statusline").setup{use_icons = true}
        end,
}
