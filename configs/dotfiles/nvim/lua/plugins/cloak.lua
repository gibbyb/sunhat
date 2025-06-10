return {
	{
		'laytan/cloak.nvim',
		opts = {
			enabled = false,
			cloak_character = "•",
			highlight_group = "Comment",
			patterns = {
				{
					file_pattern = {
						'.env*',
						'wrangler.toml',
						'.dev.vars',
					},
					cloak_pattern = "=.+"
				},
			},
		},
	},
}
