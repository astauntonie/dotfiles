return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup(
      {
        sources = { 
          null_ls.builtins.formatting.gofmt,
          null_ls.builtins.formatting.goimports,
          null_ls.builtins.formatting.google_java_format,
          null_ls.builtins.formatting.hclfmt,
          null_ls.builtins.formatting.ktlint,
          null_ls.builtins.formatting.npm_groovy_lint,
          null_ls.builtins.formatting.packer,
          null_ls.builtins.formatting.pg_format,
          null_ls.builtins.formatting.terraform_fmt,
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.diagnostics.ansiblelint,
          null_ls.builtins.diagnostics.checkstyle.with({
            extra_args = { "-c", "/google_checks.xml" }, -- or "/sun_checks.xml" or path to self written rules
          }),
          null_ls.builtins.diagnostics.ktlint,
          null_ls.builtins.diagnostics.saltlint,
          null_ls.builtins.diagnostics.terraform_validate,
          null_ls.builtins.diagnostics.tfsec,
          null_ls.builtins.diagnostics.vacuum,
          null_ls.builtins.diagnostics.yamllint,
        },
      }
    )

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end
}

