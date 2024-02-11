return {
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
}
