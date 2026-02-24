return {
	'goolord/alpha-nvim',
	event = 'VimEnter',
	config = function()
		local dashboard = require('alpha.themes.dashboard')

		local colors = require('catppuccin.palettes').get_palette()
		vim.api.nvim_set_hl(0, 'AlphaHeader',   { fg = colors.blue })
		vim.api.nvim_set_hl(0, 'AlphaButtons',  { fg = colors.blue })
		vim.api.nvim_set_hl(0, 'AlphaShortcut', { fg = colors.mauve })
		vim.api.nvim_set_hl(0, 'AlphaFooter',   { fg = colors.lavender })
		dashboard.section.header.opts.hl  = 'AlphaHeader'
		dashboard.section.buttons.opts.hl = 'AlphaButtons'

		local stats = require('lazy').stats()
		dashboard.section.footer.val = '⚡ ' .. stats.count .. ' plugins cargados en ' .. (math.floor(stats.startuptime * 100) / 100) .. 'ms'
		dashboard.section.footer.opts.hl = 'AlphaFooter'

		dashboard.section.header.val = {
			'███████╗██╗░░░██╗░█████╗░░██████╗░██████╗░██╗░░░██╗███████╗███████╗',
			'██╔════╝██║░░░██║██╔══██╗██╔════╝██╔═══██╗██║░░░██║██╔════╝╚════██║',
			'█████╗░░╚██╗░██╔╝███████║╚█████╗░██║██╗██║██║░░░██║█████╗░░░░███╔═╝',
			'██╔══╝░░░╚████╔╝░██╔══██║░╚═══██╗╚██████╔╝██║░░░██║██╔══╝░░██╔══╝░░',
			'██║░░░░░░░╚██╔╝░░██║░░██║██████╔╝░╚═██╔═╝░╚██████╔╝███████╗███████╗',
			'╚═╝░░░░░░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░░░░╚═╝░░░░╚═════╝░╚══════╝╚══════╝',
		}

		local function button(sc, txt, cmd)
			local btn = dashboard.button(sc, txt, cmd)
			btn.opts.hl          = 'AlphaButtons'
			btn.opts.hl_shortcut = 'AlphaShortcut'
			return btn
		end

		dashboard.section.buttons.val = {
			button('e', '  Nuevo archivo',      '<cmd>ene <BAR> startinsert<CR>'),
			button('f', '  Buscar archivo',     '<cmd>lua Snacks.picker.files()<CR>'),
			button('r', '  Archivos recientes', '<cmd>lua Snacks.picker.recent()<CR>'),
			button('g', '  Buscar texto',       '<cmd>lua Snacks.picker.grep()<CR>'),
			button('c', '  Configuración',      '<cmd>lua Snacks.picker.files({ cwd = vim.fn.stdpath("config") })<CR>'),
			button('q', '  Salir',              '<cmd>qa<CR>'),
		}

		require('alpha').setup(dashboard.config)
	end,
}
