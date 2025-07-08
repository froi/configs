return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	cmd = { "ConformInfo" },
	keys = {
		-- [...]
	},
	opts = {
		formatters_by_ft = {
			templ = { "templ" },
			go = { "goimports", "gofmt" },
			sql = { "sqlfmt" },
			markdown = { "prettier" },
		},
	},
}
