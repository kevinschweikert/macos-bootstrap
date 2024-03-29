vim.api.nvim_create_user_command("FormatDisable", function(args)
	if args.bang then
		-- FormatDisable! will disable formatting just for this buffer
		vim.b.disable_autoformat = true
	else
		vim.g.disable_autoformat = true
	end
end, {
	desc = "Disable autoformat-on-save",
	bang = true,
})

vim.api.nvim_create_user_command("FormatEnable", function()
	vim.b.disable_autoformat = false
	vim.g.disable_autoformat = false
end, {
	desc = "Re-enable autoformat-on-save",
})

vim.api.nvim_create_user_command("Config", function()
	local path = "~/.config/lvim/" -- You can customize the path here
	vim.cmd("e" .. path) -- vim.cmd allows you to execute vim commands from lua
end, {})

vim.api.nvim_create_user_command("Reload", function()
	local path = "~/.config/lvim/init.lua" -- You can customize the path here
	vim.cmd("source" .. path) -- vim.cmd allows you to execute vim commands from lua
end, {})
