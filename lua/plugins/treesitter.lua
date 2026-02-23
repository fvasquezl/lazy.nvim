return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',
	opts = {
		ensure_installed = { "php", "css", "html", "javascript", "lua", "blade" },
	},
	config = function(_, opts)
		vim.api.nvim_create_autocmd('User', {
			pattern = 'TSUpdate',
			callback = function()
				require('nvim-treesitter.parsers').blade = {
					install_info = {
						url = 'https://github.com/EmranMR/tree-sitter-blade',
						files = { 'src/parser.c' },
						branch = 'main',
					},
				}
				vim.treesitter.language.register('blade', { 'blade' })
			end,
		})

		require('nvim-treesitter').setup(opts)
		vim.api.nvim_create_autocmd('FileType', {
			callback = function()
				pcall(vim.treesitter.start)
			end,
		})
	end,
}
