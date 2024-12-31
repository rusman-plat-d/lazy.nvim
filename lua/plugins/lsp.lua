return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            intelephense = {
                -- You can add additional settings here if needed
                settings = {
                    intelephense = {
                        files = {
                            associations = { "*.php", "*.module", "*.inc" },     -- File extensions
                            maxSize = 1000000, -- Example setting for larger files
                        },
                        telemetry = {
                            enable = true,     -- Disable telemetry if needed
                        },
                    },
                },
            },
        },
    },
}
