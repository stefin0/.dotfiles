return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			c = { "clang-format" },
			html = { "prettierd" },
			javascript = { "prettierd" },
			json = { "prettier" },
			lua = { "stylua" },
			python = { "isort", "black" },
			typescript = { "prettierd" },
			typescriptreact = { "prettier" },
		},
		format_on_save = {},
	},
}
