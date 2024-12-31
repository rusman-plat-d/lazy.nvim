return {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
        -- Extend or modify the default options
        opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
            file_ignore_patterns = { "node_modules", "vendor" },
            vimgrep_arguments = {
                'rg',
                '--color=never',
                '--no-heading',
                '--with-filename',
                '--line-number',
                '--column',
                '--smart-case',
                '--glob=!.git/',
                '--glob=!node_modules/',
                '--glob=!vendor/'
            },
        })
        -- opts.defaults = {
        --     vimgrep_arguments = {
        --         'rg',
        --         '--color=never',
        --         '--no-heading',
        --         '--with-filename',
        --         '--line-number',
        --         '--column',
        --         '--smart-case',
        --         '--glob=!.git/',
        --         '--glob=!node_modules/',
        --         '--glob=!vendor/'
        --     },
        -- }
    end,
}

-- require('telescope').setup({
--     defaults = {
--         file_ignore_patterns = { "node_modules", "vendor" },
--         vimgrep_arguments = {
--             'rg',
--             '--color=never',
--             '--no-heading',
--             '--with-filename',
--             '--line-number',
--             '--column',
--             '--smart-case',
--             '--glob=!.git/',
--             '--glob=!node_modules/',
--             '--glob=!vendor/'
--         },
--     }
-- })
