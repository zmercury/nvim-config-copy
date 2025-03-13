local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- netrw whole page
vim.keymap.set("n", "<leader>e", ":Explore<CR>", { noremap = true, silent = true })

-- Move 10 lines up/down
keymap.set("n", "<C-j>", "10j", opts)
keymap.set("n", "<C-k>", "10k", opts)

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<leader>dn", function()
	vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function()
	require("craftzdog.hsl").replaceHexWithHSL()
end)

keymap.set("n", "<leader>i", function()
	require("craftzdog.lsp").toggleInlayHints()
end)

vim.api.nvim_create_user_command("ToggleAutoformat", function()
	require("craftzdog.lsp").toggleAutoformat()
end, {})

vim.api.nvim_create_user_command("Runcs", function()
	local file_dir = vim.fn.expand("%:p:h"):gsub("\\", "/")
	-- Open terminal in split and run the command
	vim.cmd("split")
	vim.cmd(
		string.format(
			[[terminal pwsh -NoLogo -NoProfile -Command "Set-Location '%s'; dotnet run; Write-Host ''; Read-Host | Out-Null; exit"]],
			file_dir
		)
	)
	-- Auto-close the terminal when process completes
	vim.api.nvim_create_autocmd("TermClose", {
		pattern = "*",
		once = true,
		callback = function()
			vim.cmd("bdelete!")
		end,
	})
	vim.cmd("startinsert")
end, { nargs = 0 })

vim.api.nvim_create_user_command("Createcs", function()
	local file_dir = vim.fn.expand("%:p:h"):gsub("\\", "/")
	-- Open terminal in split and run the command
	vim.cmd("split")
	vim.cmd(
		string.format(
			[[terminal pwsh -NoLogo -NoProfile -Command "Set-Location '%s'; dotnet new console --use-program-main true; Write-Host ''; Read-Host | Out-Null; exit"]],
			file_dir
		)
	)
	-- Auto-close the terminal when process completes
	vim.api.nvim_create_autocmd("TermClose", {
		pattern = "*",
		once = true,
		callback = function()
			vim.cmd("bdelete!")
		end,
	})
	vim.cmd("startinsert")
end, { nargs = 0 })

-- Terminal and Navigation Keymaps
keymap.set("n", "<leader>wt", ":!wt -w 0 nt<CR>", opts)
keymap.set("n", "$$", "$A", opts)
keymap.set("i", "$$", "<ESC>A", opts)
keymap.set("n", "<leader>c", "0wi//<Esc>", opts)

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("mercury-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- In your init.lua or another config file
vim.api.nvim_create_autocmd("FileType", {
	pattern = "cs",
	callback = function()
		vim.cmd([[iabbrev <buffer> cw Console.WriteLine(]])
	end,
})

--duplicate the current line below the current line
vim.keymap.set("n", "<A-d>", "yyp", { noremap = true, silent = true })
