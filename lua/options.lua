require 'helpers.globals'

g.mapleader = ','

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
opt.smartindent = true

--[[ search ]]--
-- Игнорировать регистр при поиске
opt.ignorecase = true
-- Не игнорировать регистр, если есть символы в верхнем регистре
-- Если напишем 'Ignore', то он будет искать только 'Ignore'
opt.smartcase = true
-- Подсвечивать найденные текстовые объекты
opt.showmatch = false

--[[ other ]]--
-- Вертикальные сплиты становятся справа
opt.splitright = true
-- Горизонтальные сплиты становятся снизу
opt.splitbelow = true

-- Используем системный буфер обмена
opt.clipboard = 'unnamedplus'

-- Отключаем дополнение файлов в конце
opt.fixeol = false

-- Автодополнение (встроенное в Neovim)
opt.completeopt = 'menuone,noselect'

-- Не автокомментировать новые линии при переходе на новую строку
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

opt.list = true -- Show some invisible characters (tabs...
opt.listchars = {
  tab = '» ',
  trail = '·',
  eol = '↲',
}
-- показывать нумерацию
opt.number = true
-- command line
opt.laststatus = 2
-- Make command line two lines high
opt.ch = 2
-- Show the current command in the lower right corner
opt.showcmd = true
