local root_files = {
  '.luarc.json',
  '.luarc.jsonc',
  '.luacheckrc',
  '.stylua.toml',
  'stylua.toml',
  'selene.toml',
  'selene.yml',
  '.git',
}

return {
	{
		"neovim/nvim-lspconfig",
    dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
      'hrsh7th/cmp-nvim-lsp-document-symbol',
      'hrsh7th/cmp-nvim-lua',
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
			'hrsh7th/cmp-emoji',
			'chrisgrieser/cmp-nerdfont',
      'jcha0713/cmp-tw2css',
      'SergioRibera/cmp-dotenv',
      'saadparwaiz1/cmp_luasnip',
      'onsails/lspkind.nvim',
      'rafamadriz/friendly-snippets',
			"j-hui/fidget.nvim",
      {
        "David-Kunz/cmp-npm",
        dependencies = { 'nvim-lua/plenary.nvim' },
        ft = "json",
        config = function()
          require('cmp-npm').setup({})
        end
      },
			"stevearc/conform.nvim",
      {
        'L3MON4D3/LuaSnip',
        version = 'v2.*',
        build = 'make install_jsregexp',
      },
      {
        'supermaven-inc/supermaven-nvim',
        config = function()
          require('supermaven-nvim').setup({
            --keymaps = {
              --accept_suggestion = '<Tab>',
              --clear_suggestion = '<C-]>',
              --accept_word = '<C-.>',
            --},
            disable_inline_completion = true, -- for cmp
          })
        end,
      },
			--{ 'hrsh7th/cmp-cmdline' },
      --{ 'kbwo/cmp-yank' },
      --{
      --'garyhurtz/cmp_kitty',
      --init = function()
        --require('cmp_kitty'):setup()
        --end
      --},
    },

    config = function()
        require("conform").setup({
            formatters_by_ft = {
            }
        })
        local cmp = require('cmp')
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities())

        require("fidget").setup({})
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
							'bashls',
							'docker_compose_language_service',
							'dockerls',
							'eslint',
							'intelephense',
							'jsonls',
							'gopls',
							'lua_ls',
							'pyright',
							'rust_analyzer',
							'sqlls',
							'tailwindcss',
							'yamlls',
            },
            handlers = {
                function(server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end,

                zls = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.zls.setup({
                        root_dir = lspconfig.util.root_pattern(".git", "build.zig", "zls.json"),
                        settings = {
                            zls = {
                                enable_inlay_hints = true,
                                enable_snippets = true,
                                warn_style = true,
                            },
                        },
                    })
                    vim.g.zig_fmt_parse_errors = 0
                    vim.g.zig_fmt_autosave = 0

                end,
                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                format = {
                                    enable = true,
                                    -- Put format options here
                                    -- NOTE: the value should be STRING!!
                                    defaultConfig = {
                                        indent_style = "space",
                                        indent_size = "2",
                                    }
                                },
                            }
                        }
                    }
                end,
            }
        })
				local cmp_select = { behavior = cmp.SelectBehavior.Select }

				cmp.setup.cmdline(':', {
					mapping = cmp.mapping.preset.cmdline(),
					sources = cmp.config.sources({
						{ name = 'path' }
					}, {
						{
							name = 'cmdline',
							option = {
								ignore_cmds = { 'Man', '!' }
							}
						}
					})
				})

				local lspkind = require('lspkind')
				cmp.setup({
					snippet = {
						expand = function(args)
							require('luasnip').lsp_expand(args.body)
						end,
					},
					sources = {
						{name = 'supermaven'},
						{name = 'path'},
						{name = 'buffer', keyword_length = 3},
						{name = 'nvim_lsp'},
						{name = 'nvim_lsp_document_symbol'},
						{name = 'nvim_lsp_signature_health'},
						{name = 'nvim_lua'},
						{name = 'luasnip', keyword_length = 2},
						{name = 'nerdfont'},
						{name = 'emoji'},
						{name = 'npm'},
						{name = 'cmp-tw2css'},
						{name = 'dotenv'},
						--{name = 'cmdline'},
						--{name = 'kitty'},
						--{name = 'yank'},
					},
					formatting = {
						format = lspkind.cmp_format({
							mode = 'symbol',
							maxwidth = {
								menu = 50,
								abbr = 50,
							},
							symbol_map = {
								Supermaven = "",
							},
							ellipsis_char = '...',
							show_labelDetails = true,
							before = function (entry, vim_item)
								return vim_item
							end
						})
					},
					mapping = cmp.mapping.preset.insert({
						-- Tab to select the next item
						['<Tab>'] = cmp.mapping(function(fallback)
							if cmp.visible() then
								if cmp.get_selected_entry() then
									cmp.confirm({select = false})
								else
									cmp.select_next_item()
								end
							else
								fallback()
							end
						end, { 'i', 's' }),

						['<C-y>'] = cmp.mapping.confirm({ select = true }),
						['<C-Space>'] = cmp.mapping.complete(),
						['<C-e>'] = cmp.mapping.abort(),
						['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
						['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
						['<C-d>'] = cmp.mapping.scroll_docs(4),
						['<C-u>'] = cmp.mapping.scroll_docs(-4),
					}),
					preselect = cmp.PreselectMode.Item,
					completion = {
						completeopt = 'menu,menuone,noinsert',
					}
				})

        vim.diagnostic.config({
            -- update_in_insert = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
    end
	},
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
	},
	{
		'windwp/nvim-ts-autotag',
		config = function ()
			require('nvim-ts-autotag').setup()
		end
	},
}
