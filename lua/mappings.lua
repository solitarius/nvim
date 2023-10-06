local map = vim.api.nvim_set_keymap

function nm(key, command)
  map('n', key, command, {noremap = true})
end

function im(key, command)
  map('i', key, command, {noremap = true})
end

function vm(key, command)
  map('v', key, command, {noremap = true})
end

function tm(key, command)
  map('t', key, command, {noremap = true})
end

nm(',e.', [[:e %:h<cr>]])
nm(',ev', [[:e $MYVIMRC<CR>]])

-- move by split screen
nm(',h', [[:wincmd h<CR>]])
nm(',j', [[:wincmd j<CR>]])
nm(',k', [[:wincmd k<CR>]])
nm(',l', [[:wincmd l<CR>]])

nm(',H', [[:wincmd H<CR>]])
nm(',J', [[:wincmd J<CR>]])
nm(',K', [[:wincmd K<CR>]])
nm(',L', [[:wincmd L<CR>]])

-- Telescope
nm(',f', [[:Telescope find_files<CR>]])
nm('<M-e>', [[:Telescope oldfiles<CR>]])
nm('<M-o>', [[:Telescope git_files<CR>]])
nm(',q', [[:Telescope buffers<CR>]])

-- LSP
nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>' )             -- Hover object
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')       -- Code actions
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')            -- Rename an object
nm('gd', '<cmd>lua vim.lsp.buf.declaration()<cr>')       -- Go to declaration

-- tagbar
nm('<F8>', [[:TagbarToggle<CR>]])
