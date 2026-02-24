return {
	'mattn/emmet-vim',
	ft = { 'html', 'blade', 'php', 'css', 'javascript' },
	init = function()
		vim.g.user_emmet_leader_key = '<C-e>'
	end,
}
