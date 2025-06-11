return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			c = { "clang-format" },
			javascript = { "prettierd" },
			lua = { "stylua" },
			python = { "black" },
			typescript = { "prettierd" },
		},
		format_on_save = {},
	},
}
