return {
    "mg979/vim-visual-multi",
    branch = "master",
    config = function()
        vim.g.VM_default_mappings = 0 -- Disable default mappings for custom keybindings
        vim.g.VM_leader = "\\"        -- Set leader key for multi-cursor operations
        -- vim.g.VM_theme = "codedark"                    -- Choose a theme; options include `default`, `solarized`, `gruvbox`, `codedark`, etc.
        vim.g.VM_mouse_mappings = 1   -- Enable mouse support

        -- Define custom key mappings
        vim.api.nvim_set_keymap("n", "<Leader>m", "<Plug>(VM-Add-Cursor-At-Pos)", {})
        vim.api.nvim_set_keymap("n", "<Leader>M", "<Plug>(VM-Find-Under)", {})
        vim.api.nvim_set_keymap("x", "<Leader>m", "<Plug>(VM-Visual-Cursors)", {})

        vim.g.VM_maps = {
            ["Find Under"] = "<C-n>",    -- Add cursors to the word under the cursor
            ["Skip Region"] = "<C-x>",   -- Skip the current region
            ["Remove Region"] = "<C-d>", -- Remove the current cursor
            ["Select All"] = "<C-S-n>",  -- Select all occurrences of the word
        }

        vim.cmd([[
            hi VM_Extend ctermfg=yellow ctermbg=red guifg=#FFD700 guibg=#FF0000
            hi VM_Cursor cterm=reverse gui=reverse
            hi VM_Insert ctermfg=blue ctermbg=black guifg=#0000FF guibg=#000000
        ]])
    end,
}
