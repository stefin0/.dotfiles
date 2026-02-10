return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			c = { "clang-format" },
			css = { "prettierd" },
			hcl = { "terraform_fmt" },
			html = { "prettierd" },
			javascript = { "prettierd" },
			jinja = { "djlint" },
			json = { "prettier" },
			lua = { "stylua" },
			python = { "isort", "black" },
			sh = { "shellharden", "shfmt" },
			sql = { "sql_formatter" },
			terraform = { "terraform_fmt" },
			["terraform-vars"] = { "terraform_fmt" },
			typescript = { "prettierd" },
			typescriptreact = { "prettier" },
			yaml = { "prettierd" },
		},
		format_on_save = {},
	},
}
