return {
  -- Blade syntax and tools
  { "jwalton512/vim-blade" },

  -- JavaScript/TypeScript extras
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- HTML and CSS extras
  -- { import = "lazyvim.plugins.extras.lang.html" },
  -- { import = "lazyvim.plugins.extras.lang.css" },

  -- PHP and Blade
  { import = "lazyvim.plugins.extras.lang.php" },
  -- Note: Blade support might require additional plugins; see below.

  -- Go (Golang)
  { import = "lazyvim.plugins.extras.lang.go" },

  { import = "lazyvim.plugins.extras.linting.eslint" },
  -- Prettier for HTML, CSS, JavaScript, TypeScript
  { import = "lazyvim.plugins.extras.formatting.prettier" },

  -- Golang-specific formatters and linters (goimports, golangci-lint)
  -- { import = "lazyvim.plugins.extras.linting.golangci" },

  -- React support
  -- { import = "lazyvim.plugins.extras.lang.react" },

  -- Vue support
  { import = "lazyvim.plugins.extras.lang.vue" },

  -- TailwindCSS support
  { import = "lazyvim.plugins.extras.lang.tailwind" },

  -- Add other language extras or formatting tools as needed

  -- Treesitter for CSS/SCSS
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "css", "scss" })
    end,
  },
  -- LSP and formatting support
  -- {
  --   "jose-elias-alvarez/null-ls.nvim",
  --   opts = function(_, opts)
  --     local null_ls = require("null-ls")
  --     vim.list_extend(opts.sources, {
  --       null_ls.builtins.formatting.prettier.with({
  --         filetypes = { "css", "scss" },
  --       }),
  --       null_ls.builtins.diagnostics.stylelint.with({
  --         filetypes = { "css", "scss" },
  --       }),
  --     })
  --   end,
  -- },
  {
    "neovim/nvim-lspconfig",
    opts = {
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
      },
    },
  },
}
