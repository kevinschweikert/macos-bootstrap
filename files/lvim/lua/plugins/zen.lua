return {
	-- Lua
	{
		"folke/zen-mode.nvim",
		opts = {
			plugins = {
				tmux = { enabled = true },
				kitty = {
					enabled = true,
					font = "+4", -- font size increment
				},
			},
		},
	},
	{
		"folke/twilight.nvim",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
}
