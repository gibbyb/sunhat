return {
	{
		'nvim-treesitter/nvim-treesitter',
		branch = 'master',
		lazy = false,
		build = ':TSUpdate',
		opts = {
			ensure_installed = {
				'bash',
				'c',
				'cmake',
				'cpp',
				'css',
				'diff',
				'dockerfile',
				'git_config',
				'git_rebase',
				'gitattributes',
				'gitcommit',
				'gitignore',
				'html',
				'java',
				'javascript',
				'jsdoc',
				'json',
				'jsonc',
				'kotlin',
				'lua',
				'luadoc',
				'luap',
				'make',
				'markdown',
				'markdown_inline',
				'php',
				'printf',
				'python',
				'query',
				'regex',
				'rust',
				'scala',
				'sql',
				'svelte',
				'swift',
				'toml',
				'tsx',
				'typescript',
				'vim',
				'vimdoc',
				'xml',
				'yaml',
				'zig'
			},
			sync_install = false,
			auto_install = true,
			indent = { enable = true },
			highlight = {
				enable = true,
				disable = function(lang, buf)
						local max_filesize = 100 * 1024 -- 100 KB
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
								return true
						end
				end,
				-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
				-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages
				additional_vim_regex_highlighting = false,
			},
		},
	},
	{
		'nvim-treesitter/playground',
	},
	{
		'nvim-treesitter/nvim-treesitter-context'
	},
}

