return {
	'NvChad/nvim-colorizer.lua',
	event = { 'BufReadPre', 'BufNewFile' },
	opts = {
		filetypes = { '*' },
		user_default_options = {
			tailwind   = true,
			css        = true,
			html       = true,
			css_fn     = true,
			mode       = 'background',
		},
	},
}
