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
                "--hidden",
                "--no-ignore", -- Include Git-ignored files
                '--with-filename',
                '--line-number',
                '--column',
                '--smart-case',
                -- '--ignore', -- This ensures .gitignore is respected
                '--glob=!.git/',
                '--glob=!node_modules/',
                '--glob=!vendor/'
            },
        })
        opts.pickers = vim.tbl_deep_extend("force", opts.pickers or {}, {
            find_files = {
                hidden = true, -- Enable hidden files
            },
        })
    end,
}
