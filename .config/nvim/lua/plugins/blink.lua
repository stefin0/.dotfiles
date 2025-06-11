return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	version = "1.*",
	---@module "blink.cmp"
	---type blink.cmp.Config
	opts = {
		completion = { documentation = { auto_show = true } },
		signature = { enabled = true },
		sources = { default = { "lsp", "path", "snippets", "buffer" } },
	},
	opts_extend = { "sources.default" },
}
