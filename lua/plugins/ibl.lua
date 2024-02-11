return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
        vim.cmd [[highlight MyIndent guifg=#444444]]
        require("ibl").setup {
            indent = {char='|', highlight = {"MyIndent"}},
            scope = {
                enabled = false,
             }
        }
    end
}
