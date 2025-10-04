return {
    "echasnovski/mini.nvim",
    config = function()
        require("mini.ai").setup()

        require("mini.statusline").setup{use_icons = true}
        local animate = require("mini.animate")
        animate.setup{
            scroll = {
                enable = false
            },
            cursor = {
                timing = animate.gen_timing.linear({ duration = 100, unit = 'total' })
            }
        }

        require("mini.starter").setup{
            header = [[███████╗ ██████╗ ██╗   ██╗██╗      ██████╗ ███████╗███████╗██╗███╗   ██╗███████╗
██╔════╝██╔═══██╗██║   ██║██║      ██╔══██╗██╔════╝██╔════╝██║████╗  ██║██╔════╝
███████╗██║   ██║██║   ██║██║      ██████╔╝█████╗  █████╗  ██║██╔██╗ ██║█████╗
╚════██║██║   ██║██║   ██║██║      ██╔══██╗██╔══╝  ██╔══╝  ██║██║╚██╗██║██╔══╝
███████║╚██████╔╝╚██████╔╝███████╗ ██║  ██║███████╗██║     ██║██║ ╚████║███████╗
╚══════╝ ╚═════╝  ╚═════╝ ╚══════╝ ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚═╝  ╚═══╝╚══════╝
]]
        }
    end,
}
