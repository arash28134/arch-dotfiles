return {
	"sbdchd/neoformat",
	config = function()
		local autocmd = vim.api.nvim_create_autocmd
		autocmd("BufWritePre", {
			command = ":Neoformat",
		})
	end,
}
