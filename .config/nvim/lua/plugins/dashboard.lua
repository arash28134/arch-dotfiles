return {
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',
	dependencies = { {'nvim-tree/nvim-web-devicons'}, {'nvim-telescope/telescope.nvim'}},
	config = function()
		require('dashboard').setup({
			theme = 'hyper',
			config = {
				week_header = {
					enable = true,
				},
				shortcut = {
					{ desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
					{
						desc = ' Dotfiles',
						group = 'Number',
						action = 'Telescope dotfiles',
						key = 'd',
					},
				},
			},
		})
	end,
}
