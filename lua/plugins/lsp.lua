return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "jose-elias-alvarez/typescript.nvim",
            init = function()
                require("lazyvim.util").lsp.on_attach(function(_, buffer)
                    -- stylua: ignore
                    vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports",
                        { buffer = buffer, desc = "Organize Imports" })
                    vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
                end)
            end,
        },
        opts = {
            format_on_save = true,
            servers = {
                cssls = {
                    settings = {
                        css = {
                            validate = true,
                        },
                        scss = {
                            validate = true,
                        },
                    },
                },
                intelephense = {
                    -- You can add additional settings here if needed
                    filetypes = { "php", "blade" },
                    settings = {
                        intelephense = {
                            -- Default settings
                            environment = {
                                phpVersion = "8.2",
                            },
                            format = {
                                braces = "k&r",
                            },
                            filetypes = { "php", "blade" },
                            files = {
                                -- associations = { "*.php", "*.module", "*.inc" },     -- File extensions
                                associations = { "*.php", "*.blade.php" },
                                maxSize = 1000000, -- Example setting for larger files
                            },
                            init_options = {
                                licenceKey = nil,
                                clearCache = false,
                            },
                            telemetry = {
                                enable = true, -- Disable telemetry if needed
                            },
                        },
                    },
                },
                -- pyright will be automatically installed with mason and loaded with lspconfig
                pyright = {},
                -- tsserver will be automatically installed with mason and loaded with lspconfig
                tsserver = {},
            },
            -- you can do any additional lsp server setup here
            -- return true if you don't want this server to be setup with lspconfig
            ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
            setup = {
                -- example to setup with typescript.nvim
                tsserver = function(_, opts)
                    require("typescript").setup({ server = opts })
                    return true
                end,
                -- Specify * to use this function as a fallback for any server
                -- ["*"] = function(server, opts) end,
            },
        }
    },
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            opts.ensure_installed = opts.ensure_installed or {}
            opts.ensure_installed = vim.list_extend(opts.ensure_installed, {
                -- "stylua",
                "shellcheck",
                -- "shfmt",
                "flake8",
                "intelephense"
            })
        end,
    },
}
