return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.3',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'ahmedkhalf/project.nvim',
    'BurntSushi/ripgrep',
  },
  config = function()
    local telescope = require 'telescope'
    telescope.load_extension 'projects'
    telescope.setup()
  end
}
