return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSInstall php css html javascript lua blade',
	config = function()
		-- Register custom blade parser (not in nvim-treesitter by default)
		local parsers = require('nvim-treesitter.parsers')
		parsers.blade = {
			install_info = {
				url = 'https://github.com/EmranMR/tree-sitter-blade',
				branch = 'main',
			},
			filetype = 'blade',
		}

		-- Detect .blade.php files as blade filetype
		vim.filetype.add({
			pattern = {
				['.*%.blade%.php'] = 'blade',
			},
		})

		-- Tell treesitter that filetype "blade" uses the blade parser
		vim.treesitter.language.register('blade', 'blade')

		require('nvim-treesitter').setup()

		vim.api.nvim_create_autocmd('FileType', {
			callback = function()
				pcall(vim.treesitter.start)
			end,
		})
	end,
}
