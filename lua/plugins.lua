require 'helpers.globals'


return {
  -- mason
  {
    'williamboman/mason.nvim',
    build = ':MasonUpdate',
    dependencies = {
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
    },
    config = function()
      require 'configs.mason'
    end
  },
  -- colorscheme gruvbox
  {
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require 'configs.colorscheme.gruvbox'
    end,
  },
  -- bufexplorer
  {
    'jlanzarotta/bufexplorer'
  },
  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'ahmedkhalf/project.nvim',
      'BurntSushi/ripgrep',
    },
    config = function()
      require 'configs.telescope'
    end
  },
  -- tree-sitter
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    event = { 'BufReadPost', 'BufNewFile' },
    config = function()
      require 'configs.treesitter'
    end
  },
  -- CMP
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-emoji',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-nvim-lua',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      require 'configs.cmp'
    end
  },
  {
    'folke/trouble.nvim',
    lazy = false,
    config = function()
      require 'configs.trouble'
    end,
  },
  -- tagbar
  {
    'preservim/tagbar'
  },
  -- alfa
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  },
  -- lualine
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require 'configs.lualine'
    end
  },
  -- gitsign
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      toggler = {
          ---Line-comment toggle keymap
          line = ',cc',
          ---Block-comment toggle keymap
          block = ',bc',
      },
      opleader = {
        ---Line-comment keymap
        line = ',c',
        ---Block-comment keymap
        block = ',b',
      },
    },
    lazy = false,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      require 'configs.ibl'
    end
  },
  {'tpope/vim-surround'},
  -- {'hynek/vim-python-pep8-indent'},
  --end
}
