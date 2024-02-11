return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' },
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  config = function()
  require'nvim-treesitter.configs'.setup {

    -- Needed parsers
    ensure_installed = {
      'lua',
      -- 'typescript',
      -- 'javascript',
      'go',
      'python',
      'sql',
    },

    -- Install all parsers synchronously
    sync_install = false,

    -- Подсветка
    highlight = {
      -- Enabling highlight for all files
      enable = true,
      disable = {},
    },

    indent = {
      -- Disabling indentation for all files
      enable = false,
      disable = {},
    },
    textobjects = {
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
          ["]f"] = { query = "@call.outer", desc = "Next function call start" },
          ["]m"] = { query = "@function.outer", desc = "Next method/function def start" },
          ["]c"] = { query = "@class.outer", desc = "Next class start" },
          ["]i"] = { query = "@conditional.outer", desc = "Next conditional start" },
          ["]l"] = { query = "@loop.outer", desc = "Next loop start" },

          -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
          -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
          ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
          ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
        },
        goto_next_end = {
          ["]F"] = { query = "@call.outer", desc = "Next function call end" },
          ["]M"] = { query = "@function.outer", desc = "Next method/function def end" },
          ["]C"] = { query = "@class.outer", desc = "Next class end" },
          ["]I"] = { query = "@conditional.outer", desc = "Next conditional end" },
          ["]L"] = { query = "@loop.outer", desc = "Next loop end" },
        },
        goto_previous_start = {
          ["[f"] = { query = "@call.outer", desc = "Prev function call start" },
          ["[m"] = { query = "@function.outer", desc = "Prev method/function def start" },
          ["[c"] = { query = "@class.outer", desc = "Prev class start" },
          ["[i"] = { query = "@conditional.outer", desc = "Prev conditional start" },
          ["[l"] = { query = "@loop.outer", desc = "Prev loop start" },
        },
        goto_previous_end = {
          ["[F"] = { query = "@call.outer", desc = "Prev function call end" },
          ["[M"] = { query = "@function.outer", desc = "Prev method/function def end" },
          ["[C"] = { query = "@class.outer", desc = "Prev class end" },
          ["[I"] = { query = "@conditional.outer", desc = "Prev conditional end" },
          ["[L"] = { query = "@loop.outer", desc = "Prev loop end" },
        },
      },
    },
  }
  end
}
