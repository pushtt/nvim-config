return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        "nvim-lua/plenary.nvim",
        {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'}
    },
    config = function()
        require('telescope').setup {
            pickers = {
                find_files = {
                    theme = "ivy"
                }
            },
            extensions = {
                fzf = {}
            }
        }
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>en', function()
            builtin.find_files{ cwd = vim.fn.stdpath("config") }
        end)
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

        -- multi-ripgrep
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)

        vim.keymap.set("n", "<leader>pg", require "config.telescope.multigrep")



    end
}
