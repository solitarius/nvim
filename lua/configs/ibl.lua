vim.cmd [[highlight MyIndent guifg=#444444]]
require("ibl").setup {
    indent = {char='|', highlight = {"MyIndent"}},
    scope = {
       enabled = false,
     }
}
