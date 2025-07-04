return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier.with({
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "css",
            "scss",
            "less",
            "html",
            "json",
            "yaml",
            "markdown",
            "graphql",
          },
          extra_args = { "--no-semi" },
        }),
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.black,
        require("none-ls.diagnostics.eslint_d"),
        require("none-ls.formatting.eslint_d"),
      },
    })
  end,
}
