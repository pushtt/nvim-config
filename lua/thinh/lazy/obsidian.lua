return {
    "epwalsh/obsidian.nvim",
    lazy=false,
    version = "*",  -- recommended, use latest release instead of latest commit
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
        --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
        --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
        --   "BufReadPre path/to/my-vault/**.md",
        --   "BufNewFile path/to/my-vault/**.md",
        -- },
        dependencies = { "plenary" },
        config = function()
            require('obsidian').setup({
                workspaces = {
                    {
                        name = "personal",
                        path = "/Users/thinh/projects",
                    },
                    {
                        name = "icloud",
                        path = "/Users/thinh/Library/Mobile Documents/iCloud~md~obsidian/Documents/second-brain",
                    },
                },
            })
        end
    }

