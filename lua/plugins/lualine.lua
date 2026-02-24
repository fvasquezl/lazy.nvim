return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local colors = require('catppuccin.palettes').get_palette()

		require('lualine').setup({
			options = {
				theme = 'catppuccin',
				component_separators = { left = '', right = '' },
				section_separators   = { left = '', right = '' },
			},
			sections = {
				lualine_a = { 'mode' },
				lualine_b = {
					{ 'branch',   color = { fg = colors.mauve,  gui = 'bold' } },
					{ 'diff',     diff_color = {
						added    = { fg = colors.green },
						modified = { fg = colors.yellow },
						removed  = { fg = colors.red },
					}},
					{ 'diagnostics', colors = {
						error = colors.red,
						warn  = colors.yellow,
						info  = colors.blue,
						hint  = colors.teal,
					}},
				},
				lualine_c = {
					{ 'filename', color = { fg = colors.text }, path = 1 },
				},
				lualine_x = {
					{ 'filetype', color = { fg = colors.blue } },
				},
				lualine_y = {
					{ 'progress', color = { fg = colors.subtext1 } },
				},
				lualine_z = { 'location' },
			},
		})
	end,
}
