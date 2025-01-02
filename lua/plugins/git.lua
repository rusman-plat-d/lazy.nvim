return {
    -- Gitsigns for inline git information
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            current_line_blame = true, -- Enable persistent blame for the current line
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = "eol", -- Display blame text at the end of the line
                delay = 0,             -- No delay for showing blame
            },
            -- current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
            -- on_attach = function(bufnr)
            --     local gs = package.loaded.gitsigns
            --     local map = function(mode, lhs, rhs, opts)
            --         opts = opts or {}
            --         opts.buffer = bufnr
            --         vim.keymap.set(mode, lhs, rhs, opts)
            --     end

            --     -- Keybindings
            --     map('n', '<leader>hs', gs.stage_hunk, { desc = 'Stage hunk' }) -- Stage hunk
            --     map('n', '<leader>hu', gs.undo_stage_hunk, { desc = 'Undo stage hunk' }) -- Undo stage hunk
            --     map('n', '<leader>hS', gs.stage_buffer, { desc = 'Stage entire file' }) -- Stage entire file
            --     map('n', '<leader>hU', gs.reset_buffer, { desc = 'Unstage entire file' }) -- Unstage entire file
            --     map('n', '<leader>hp', gs.preview_hunk, { desc = 'Preview hunk' }) -- Preview hunk
            -- end,
            -- signs = {
            --     add = { text = "+" },
            --     change = { text = "~" },
            --     delete = { text = "_" },
            --     topdelete = { text = "‾" },
            --     changedelete = { text = "~" },
            -- },
        },
    },

    -- Lazygit integration
    {
        "kdheepak/lazygit.nvim",
        cmd = "LazyGit",
        extras = { "vcs.git" },
    },

    -- Vim-fugitive for Git commands
    {
        "tpope/vim-fugitive",
        cmd = { "Git", "Gstatus", "Gblame" },
    },
}
