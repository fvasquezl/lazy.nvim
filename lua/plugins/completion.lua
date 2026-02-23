return {
	'saghen/blink.cmp',
	version = '*',
	dependencies = {
		'rafamadriz/friendly-snippets',
	},
	opts = {
		keymap = { preset = 'default' },
		appearance = {
			nerd_font_variant = 'mono',
		},
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},
		completion = {
			menu = {
				min_width = 10,
				draw = {
					columns = {
						{ 'label', fill = true },
						{ 'kind' },
					},
				},
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
				window = {
					max_width = 60,
					direction_priority = {
						menu_north = { 'w', 'e', 'n', 's' },
						menu_south = { 'w', 'e', 's', 'n' },
					},
				},
			},
		},
	},
}
