return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					'pyright',
					'clangd',
					'html',
					'cssls',
					'lua_ls',
					'jsonls',
				}
			})
		end
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		config = function()
			require("mason-nvim-dap").setup({
				ensure_installed = {
					"python",
					"cpptools",
				},
				handlers = {}
			})
		end
	}
}
