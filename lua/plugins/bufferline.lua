return {
	'akinsho/bufferline.nvim', 
	version = "*", 
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require("bufferline").setup({
			options = {
				show_buffer_close_icons = false,
			}
		})

		vim.api.nvim_create_autocmd('FileType', {
			pattern = 'alpha',
			callback = function()
				vim.o.showtabline = 0
			end,
		})

		vim.api.nvim_create_autocmd('BufUnload', {
			callback = function()
				if vim.bo.filetype == 'alpha' then
					vim.o.showtabline = 2
				end
			end,
		})
	end
}
