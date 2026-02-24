return {
	'lukas-reineke/indent-blankline.nvim',
	main = 'ibl',
	config = function()
		local colors = require('catppuccin.palettes').get_palette()

		vim.api.nvim_set_hl(0, 'IblIndent', { fg = colors.surface1 })
		vim.api.nvim_set_hl(0, 'IblScope',  { fg = colors.mauve })

		require('ibl').setup({
			indent = {
				char      = '│',
				tab_char  = '│',
				highlight = 'IblIndent',
			},
			scope = {
				enabled    = true,
				highlight  = 'IblScope',
				show_start = false,
				show_end   = false,
				include = {
					node_type = {
						['*'] = {
							'array', 'object', 'table', 'table_constructor',
							'array_creation_expression', 'object_creation_expression',
							'arguments', 'parameters',
							'function', 'arrow_function', 'function_definition',
							'if_statement', 'for_statement', 'while_statement',
							'class_declaration', 'method_declaration',
						},
						['blade'] = {
							'conditional', 'loop', 'section', 'switch',
							'fragment', 'php_statement', 'once', 'verbatim',
							'element', 'script_element', 'style_element',
						},
						['html'] = {
							'element', 'script_element', 'style_element',
						},
					},
				},
			},
			exclude = {
				filetypes = { 'alpha', 'lazy', 'mason', 'help', 'dashboard' },
			},
		})
	end,
}
