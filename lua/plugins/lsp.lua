return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config('intelephense', {
			filetypes = { 'php', 'blade' },
		})

		vim.lsp.enable('laravel_ls')
		vim.lsp.enable('intelephense')

		vim.api.nvim_create_autocmd('LspAttach', {
			callback = function(ev)
				local map = function(key, fn, desc)
					vim.keymap.set('n', key, fn, { buffer = ev.buf, desc = desc })
				end

				map('gd', vim.lsp.buf.definition, 'Go to definition')
				map('gD', vim.lsp.buf.declaration, 'Go to declaration')
				map('gr', vim.lsp.buf.references, 'Find references')
				map('K', vim.lsp.buf.hover, 'Hover documentation')
				map('<leader>rn', vim.lsp.buf.rename, 'Rename symbol')
				map('<leader>ca', vim.lsp.buf.code_action, 'Code action')
				map('<leader>f', function() vim.lsp.buf.format({ async = true }) end, 'Format file')
				map('[d', vim.diagnostic.goto_prev, 'Previous diagnostic')
				map(']d', vim.diagnostic.goto_next, 'Next diagnostic')
			end,
		})
	end
}
