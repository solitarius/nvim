return {
    'hrsh7th/nvim-cmp',
    -- event = 'InsertEnter',
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
    },
  config = function()
    local cmp = require 'cmp'

    cmp.setup {
      snippet = {
        expand = function(args)
          require'luasnip'.lsp_expand(args.body) -- Luasnip expand
        end,
      },
      -- completion = {
      --   autocomplete = false
      -- },

      -- Mappings for cmp
      mapping = {

        -- Autocompletion menu
        ['<M-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i' }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Turn on autocomplete on <C-y>

        -- Use <C-e> to abort autocomplete
        ['<C-e>'] = cmp.mapping({
          i = cmp.mapping.abort(), -- Abort completion
          c = cmp.mapping.close(), -- Close completion window
        }),

        -- Use <C-p> and <C-n> to navigate through completion variants
        ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
        ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
      },
      performance = {
        max_view_entries = 10,
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },                -- LSP
        { name = 'buffer', max_item_count = 5 },                  -- Buffers
        { name = 'path', max_item_count = 3  },                    -- Paths
      }, {
      }),
    }
  end
}
