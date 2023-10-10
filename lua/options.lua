require 'helpers.globals'

g.mapleader = ','
-- Set associating between turned on plugins and filetype
cmd [[filetype plugin on]]

--[[ русский ]]--
opt.keymap = 'russian-jcukenwin'
opt.iminsert = 0
opt.imsearch = 0

--[[ tabs ]]--
-- use spaces instead of tabs
opt.expandtab = true
-- Установка количества пробельных символов, когда сдвигаем с помощью '<', '>'
opt.shiftwidth = 2
-- 1 таб == 2 пробела c новой строки
opt.tabstop = 2
-- Подстраивать новые строки под предыдущий отступ
opt.smartindent = false
opt.autoindent = false

--[[ search ]]--
opt.ignorecase = true  -- Игнорировать регистр при поиске
-- Не игнорировать регистр, если есть символы в верхнем регистре
-- Если напишем 'Ignore', то он будет искать только 'Ignore'
opt.smartcase = true
opt.joinspaces = false  -- Join multiple spaces in search
opt.showmatch = false  -- Подсвечивать найденные текстовые объекты

--[[ other ]]--
opt.splitright = true  -- Вертикальные сплиты становятся справа
opt.splitbelow = true  -- Горизонтальные сплиты становятся снизу

opt.wildmenu = true
opt.wildmode = "longest:full,full"

opt.clipboard = 'unnamedplus' -- Используем системный буфер обмена
opt.fixeol = false -- Отключаем дополнение файлов в конце

opt.foldmethod = 'syntax'

-- Автодополнение (встроенное в Neovim)
opt.completeopt = 'menuone,noselect'

-- Не автокомментировать новые линии при переходе на новую строку
cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]
cmd [[autocmd FileType * setlocal formatoptions-=cro]]

opt.list = true -- Show some invisible characters (tabs...
opt.listchars = {
  tab = '» ',
  trail = '·',
  eol = '↲',
}
opt.number = true  -- показывать нумерацию
opt.laststatus = 2  -- command line
opt.ch = 2  -- Make command line two lines high
opt.showcmd = true  -- Show the current command in the lower right corner
opt.textwidth = 0
opt.colorcolumn = '100'

opt.undofile = true --  keep undo history between sessions
opt.exrc = true  -- enable per-directory .nvim.lua files
opt.secure = true  -- trust local config
opt.signcolumn = 'yes'

g.tagbar_foldlevel=0
-- cmd [[let g:pyindent_disable_parentheses_indenting = 1]]
g.pyindent_open_paren = 'shiftwidth()'
