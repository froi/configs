return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {
			completions = {
				blink = { enabled = true },
			},
		},
	},
	{
		"toppair/peek.nvim",
		event = { "VeryLazy" },
		build = "deno task --quiet build:fast",
		config = function()
			local peek = require("peek")
			peek.setup()
			vim.api.nvim_create_user_command("PeekOpen", peek.open, {})
			vim.api.nvim_create_user_command("PeekClose", peek.close, {})
			vim.keymap.set("n", "<leader>mpo", peek.open)
			vim.keymap.set("n", "<leader>mpc", peek.close)
		end,
	},
	{
		"brianhuster/live-preview.nvim",
		dependencies = {
			-- You can choose one of the following pickers
			"nvim-telescope/telescope.nvim",
			"ibhagwan/fzf-lua",
			"echasnovski/mini.pick",
		},
	},
}
