return {
	{
		"cbochs/grapple.nvim",
		opts = {
			scope = "git", -- also try out "git_branch"
		},
		event = { "BufReadPost", "BufNewFile" },
		cmd = "Grapple",
		keys = {
			{ "<leader>m", desc = "Grapple" },
			{ "<leader>mM", "<cmd>Grapple toggle<cr>", desc = "Grapple Toggle Tag" },
			{ "<leader>mm", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple Open Tags" },
			{ "<leader>mn", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple Next Tag" },
			{ "<leader>mp", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple Prev Tag" },
		},
	},
}
