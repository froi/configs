local function merge(...)
	local result = {}
	for _, tbl in ipairs({ ... }) do
		for _, value in ipairs(tbl) do
			table.insert(result, value)
		end
	end
	return result
end

local daps = {
	"js-debug-adapter",
	"firefox-debug-adapter",
	"go-debug-adapter",
	"bash-debug-adapter",
}
local lsps = {
	"basedpyright",
	"bash-language-server",
	-- "deno",
	"docker-compose-language-service",
	"dockerfile-language-server",
	"eslint-lsp",
	"gitlab-ci-ls",
	"gopls",
	"html-lsp",
	"htmx-lsp",
	"json-lsp",
	"marksman",
	"prisma-language-server",
	"protols",
	"rust-analyzer",
	"sqls",
	"templ",
	"terraform-ls",
	"typescript-language-server",
	"yaml-language-server",
}
local linters = {
	"protolint",
	"jsonlint",
	"htmlhint",
	"gitlint",
	"eslint_d",
	"gitleaks",
	"sqlfluff",
	"tflint",
	"yamllint",
	"shellcheck",
	"markdownlint-cli2",
	"cspell",
}
local formatters = {
	"yamlfmt",
	"sqlfmt",
	"prettier",
	"markdown-toc",
	"goimports",
	"markdownlint-cli2",
	"shfmt",
	"stylua",
}
return {
	"williamboman/mason.nvim",
	opts = {
		ensure_installed = merge(lsps, formatters, linters, daps),
	},
}
