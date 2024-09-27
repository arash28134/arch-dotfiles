return {
	{
		'vyfor/cord.nvim',
		build = './build || .\\build',
  		event = 'VeryLazy',
		config = function()
			require("cord").setup({
			})
		end,
	},
	{
		"m4xshen/autoclose.nvim",
		config = function()
			require("autoclose").setup()
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("ibl").setup({
				exclude = {
					filetypes = {
						"dashboard",
					},
				},
			})
		end,
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("rainbow-delimiters.setup").setup()
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					theme = "onedark",
				},
			})
		end,
	},
	{
		"RaafatTurki/hex.nvim",
		config = function()
			require("hex").setup()
		end,
	},
}
