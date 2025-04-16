return {
	"folke/snacks.nvim",
	opts = {
		-- need notifier for disabling "No notifications available"
		notifier = { enabled = true },

		image = { enabled = true },
		lazygit = { enabled = true },
		picker = {
			sources = {
				files = {
					hidden = true,
					ignored = true,
				},
				explorer = {
					hidden = true,
					ignored = true,
					layout = {
						layout = {
							position = "right",
						},
					},
				},
			},
		},
	},
}
