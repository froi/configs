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
		},
		format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
	},
}
