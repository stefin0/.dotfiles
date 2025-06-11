return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		require("telescope").setup({ extensions = { fzf = {} } })
		require("telescope").load_extension("fzf")
	end,
    keys = {
        {
            "<leader>ff",
            function() require("telescope.builtin").find_files() end,
            desc = "Telescope find files"
        },
        {
            "<leader>fg",
            function() require("telescope.builtin").live_grep() end,
            desc = "Telescope live grep"
        },
        {
            "<leader>fb",
            function() require("telescope.builtin").builtin() end,
            desc = "Telescope list Built-in pickers"
        },
    },
}
