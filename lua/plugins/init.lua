return {
  -- JavaScript/TypeScript extras
  { import = "lazyvim.plugins.extras.lang.typescript" },

  { import = "lazyvim.plugins.extras.lang.angular" },

  -- HTML and CSS extras
  -- { import = "lazyvim.plugins.extras.lang.html" },
  -- { import = "lazyvim.plugins.extras.lang.css" },

  -- PHP and Blade
  { import = "lazyvim.plugins.extras.lang.php" },
  -- Blade syntax and tools
  {
    "jwalton512/vim-blade",
    event = "VeryLazy", -- Load Blade syntax plugin lazily
  },

  { import = "lazyvim.plugins.extras.lang.docker" },
  { import = "lazyvim.plugins.extras.lang.git" },
  { import = "lazyvim.plugins.extras.lang.json" },
  { import = "lazyvim.plugins.extras.lang.markdown" },
  { import = "lazyvim.plugins.extras.lang.sql" },
  { import = "lazyvim.plugins.extras.lang.yaml" },
  { import = "lazyvim.plugins.extras.util.dot" },
  { import = "lazyvim.plugins.extras.util.gitui" },
  { import = "lazyvim.plugins.extras.util.mini-hipatterns" },
  { import = "lazyvim.plugins.extras.vscode" },

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
      opts.ensure_installed = opts.ensure_installed or {}
      opts.ensure_installed = vim.list_extend(opts.ensure_installed, {
        "bash",
        "css",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "php",
        "regex",
        "scss",
        "sql",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      })
    end,
  },
  -- LSP and formatting support
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      opts.sources = opts.sources or {} -- Ensure opts.sources is a table
      opts.sources = vim.list_extend(opts.sources, {
        null_ls.builtins.formatting.prettier.with({
          filetypes = { "php", "blade" },
          extra_filetypes = { "blade.php" }, -- Explicitly include .blade.php
        }),
        -- Golangci-lint for Go
        null_ls.builtins.diagnostics.golangci_lint.with({
          command = "golangci-lint", -- Ensure correct command is used
        }),

        -- Stylelint for CSS
        null_ls.builtins.diagnostics.stylelint.with({
          command = "stylelint", -- Ensure correct command is used
        }),

        -- Eslint_d for JavaScript/HTML
        -- null_ls.builtins.diagnostics.eslint_d.with({
        --   command = require("lspconfig.util").path.join(vim.fn.getcwd(), "node_modules", ".bin", "eslint"),
        -- }),
        -- null_ls.builtins.code_actions.eslint_d.with({
        --   command = require("lspconfig.util").path.join(vim.fn.getcwd(), "node_modules", ".bin", "eslint"),
        -- }),
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.code_actions.eslint_d,

        -- PHP CS Fixer for formatting
        null_ls.builtins.formatting.phpcsfixer.with({
          command = "php-cs-fixer",    -- ensure the command is in your PATH
          args = { "fix", "--quiet" }, -- Customize rules as needed
        }),
        -- PHP Stan for diagnostics
        null_ls.builtins.diagnostics.phpstan,
      })
      vim.filetype.add({
        extension = {
          blade = "blade",
          ["blade.php"] = "blade",
        },
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        -- pattern = { "*.php", "*.blade.php" },
        callback = function()
          vim.lsp.buf.format({
            async = false, -- Synchronous formatting before saving
          })
        end,
      })
    end,
  },
}
