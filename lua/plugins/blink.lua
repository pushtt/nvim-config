return {
	"saghen/blink.cmp",
	dependencies = {
		"rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim",
	},
	version = "1.*",
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "default" },

		appearance = {
			nerd_font_variant = "mono",
		},

		snippets = {
			preset = "luasnip",
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			providers = {
				snippets = {
					name = "snippets",
					module = "blink.cmp.sources.snippets",
					enabled = true,
					opts = {
						luasnip = {
							-- Enable LuaSnip integration
						},
					},
				},
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					-- make lazydev completions top priority (see `:h blink.cmp`)
					score_offset = 100,
				},
			},
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },

		completion = {

			documentation = {
				auto_show = true,
				auto_show_delay_ms = 250,
				treesitter_highlighting = true,
				window = { border = "rounded" },
			},

			menu = {
				border = "rounded",

				cmdline_position = function()
					if vim.g.ui_cmdline_pos ~= nil then
						local pos = vim.g.ui_cmdline_pos -- (1, 0)-indexed
						return { pos[1] - 1, pos[2] }
					end
					local height = (vim.o.cmdheight == 0) and 1 or vim.o.cmdheight
					return { vim.o.lines - height, 0 }
				end,

				draw = {
					columns = {
						{ "kind_icon", "label", gap = 1 },
						{ "kind" },
					},
					components = {
						kind_icon = {
							text = function(item)
								local kind = require("lspkind").symbol_map[item.kind] or ""
								return kind .. " "
							end,
							highlight = "CmpItemKind",
						},
						label = {
							text = function(item)
								return item.label
							end,
							highlight = "CmpItemAbbr",
						},
						kind = {
							text = function(item)
								return item.kind
							end,
							highlight = "CmpItemKind",
						},
					},
				},
			},
		},
	},
	opts_extend = { "sources.default" },
}
