return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        filesystem = {
            filtered_items = {
                hide_dotfiles = false,
                hide_gitignored = true,
            },
        },
        -- window = {
        --     mappings = {
        --         ["<leader>h"] = "toggle_hidden", -- Bind key to toggle hidden files
        --     },
        -- },
    },
}
