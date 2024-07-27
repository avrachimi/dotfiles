require('nvim-ts-autotag').setup()

require('nvim-treesitter.configs').setup({
    autotag = {
        enable_close_on_slash = false
    }
})

