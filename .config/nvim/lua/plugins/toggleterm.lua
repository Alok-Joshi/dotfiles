local config = function ()
    require("toggleterm").setup({
        size = 10,
        direction = "float",
        open_mapping = [[<leader>t]],
        shell = vim.o.shell,
    })
end
        
    
return 
    {
        'akinsho/toggleterm.nvim', 
        version = "*", 
        lazy = false,
        config = config 
    }

