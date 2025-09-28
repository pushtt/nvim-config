return {
        "folke/zen-mode.nvim",
        config = function()
            vim.keymap.set("n", "<leader>zz", function()
            require("zen-mode").setup {
                window = {
                    backdrop = 1,
                    height = 0.9,
                    width = 0.8,
                    options = {
                        number = true,
                        relativenumber = true,
                        signcolumn = "no",
                        list = false,
                        cursorline = false,
                    },
                },
            }
            require("zen-mode").toggle()
            ColorMyPencils()
        end)
    end
}
