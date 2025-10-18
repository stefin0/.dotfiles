return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			c = { "clang-format" },
			css = { "prettierd" },
			html = { "prettierd" },
			javascript = { "prettierd" },
			json = { "prettier" },
			lua = { "stylua" },
			python = { "isort", "black" },
			sql = { "sql_formatter" },
			typescript = { "prettierd" },
			typescriptreact = { "prettier" },
		},
		format_on_save = {},
	},
}
