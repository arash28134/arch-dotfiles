return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")

			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, mapping_opts)
			vim.keymap.set("n", "<leader>ds", dap.continue, mapping_opts)
			vim.keymap.set("n", "<leader>dt", dap.terminate, mapping_opts)
			vim.keymap.set("n", "<leader>dn", dap.step_over, mapping_opts)
			vim.keymap.set("n", "<leader>di", dap.step_into, mapping_opts)
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "nvim-neotest/nvim-nio" },
		config = function()
			local dapui = require("dapui")
			dapui.setup()

			vim.keymap.set("n", "<leader>do", dapui.open, mapping_opts)
			vim.keymap.set("n", "<leader>dc", dapui.close, mapping_opts)
			vim.keymap.set("n", "<leader>dd", dapui.toggle, mapping_opts)
			vim.keymap.set("n", "<Space>d", function()
				dapui.float_element("scopes")
			end, mapping_opts)
		end,
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		config = function()
			require("nvim-dap-virtual-text").setup()
		end,
	},
}
