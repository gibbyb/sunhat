local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<leader>H", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>kw", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>kd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>ka", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>re", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require('mason').setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})
require('mason-lspconfig').setup({
  ensure_installed = {
  'bashls',
  'cssls',
  'cssmodules_ls',
  'docker_compose_language_service',
  'dockerls',
  'eslint',
  'intelephense',
  'jsonls',
  'lua_ls',
  'pyright',
  'rust_analyzer',
  'sqlls',
  'svelte',
  'tailwindcss',
  'yamlls',
},
  handlers = {
    lsp.default_setup,
    lua_ls = function()
      local lua_opts = lsp.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  sources = {
    --{name = 'supermaven'},
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
    {name = 'luasnip', keyword_length = 2},
    {name = 'buffer', keyword_length = 3},
  },
  formatting = lsp.cmp_format(),
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})

lsp.setup()
