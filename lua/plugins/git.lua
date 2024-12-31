
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
            current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
            -- on_attach = function(bufnr)
            --     vim.api.nvim_exec([[
            --       autocmd CursorHold * lua require("gitsigns").blame_line({full=true})
            --     ]], false)
            -- end,
            signs = {
                add = { text = "+" },
                change = { text = "~" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
            },
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
