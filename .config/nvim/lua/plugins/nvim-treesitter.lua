local config = function ()
    require("nvim-treesitter.configs").setup({
        indent = {
            enable = true,
        },
        autotag = {
            enable = true,
        },

        ensure_installed = {
            "markdown",
            "python",
            "lua",
            "cpp",
            "c",
            "json",
        },

        auto_install = true,
        highlight = {
            enable = true,
        },
    })
    end

return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = config,
}
