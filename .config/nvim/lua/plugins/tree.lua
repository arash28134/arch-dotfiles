return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local function my_on_attach(bufnr)
			local api = require "nvim-tree.api"

			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
			vim.keymap.set('n', '<C-n>',     api.tree.toggle,                  opts('Help'))
		end

		require("nvim-tree").setup {
			on_attach = my_on_attach,
		}
	end
}
