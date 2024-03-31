local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "vimdoc",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "go",
    "json",
    "sql",
    "bash",
    "c_sharp",
    "python",
    "dockerfile",
    "git_rebase",
    "gitcommit",
    "gomod",
    "gosum",
    "http",
    "yaml",
    "python",
  },
  auto_install = true,
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "prettierd",
    "isort",
    "python-lsp-server",
    "pyright",
    "clangd",
    "clang-format",
    "shfmt",
    "mypy",
    "ruff",
    "black",
    "debugpy",
    "gopls",
    "goimports-reviser",
    "golines",
    "gofumpt",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
