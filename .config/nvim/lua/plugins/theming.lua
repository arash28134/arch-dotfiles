return {
	{
		"olimorris/onedarkpro.nvim",
		config = function()
			require("onedarkpro").setup({
				options = {
					transparency = false,
				}
			})

			vim.cmd("colorscheme onedark")
		end
	},
	{
		"nvimdev/dashboard-nvim",
		dependencies = { {'nvim-tree/nvim-web-devicons'}},
		event = 'VimEnter',
		config = function()
			require('dashboard').setup()
		end
	}
}
