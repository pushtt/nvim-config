return {
    "laytan/cloak.nvim",
    config = function()
        require("cloak").setup({
            enable = true,
            cloak_character = "*",
            highlight = "Comment",
            pattern = {
                {
                    file_pattern = {
                        ".env*",
                        "wrangler.toml",
                        ".dev.var",
                    },
                    cloak_pattern = "=.+"
                },
            },
        })
    end
}
