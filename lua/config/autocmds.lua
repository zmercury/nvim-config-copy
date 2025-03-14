-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "json", "jsonc", "markdown" },
	callback = function()
		vim.opt.conceallevel = 0
	end,
})

-- Center cursor when near EOF
vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
	callback = function()
		local max_lines = vim.fn.line('$')
		local current_line = vim.fn.line('.')
		if max_lines - current_line < vim.opt.scrolloff:get() then
			vim.cmd("normal! zz")
		end
	end,
})
