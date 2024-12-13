return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
			lspconfig.ansiblels.setup({
        capabilities = capabilities
      })
			lspconfig.azure_pipelines_ls.setup({
        capabilities = capabilities
      })
			lspconfig.cucumber_language_server.setup({
        capabilities = capabilities
      })
			lspconfig.dockerls.setup({
        capabilities = capabilities
      })
			lspconfig.gradle_ls.setup({
        capabilities = capabilities
      })
			lspconfig.html.setup({
        capabilities = capabilities
      })
			lspconfig.htmx.setup({
        capabilities = capabilities
      })
			lspconfig.jsonls.setup({
        capabilities = capabilities
      })
			lspconfig.jdtls.setup({
        capabilities = capabilities
      })
			lspconfig.kotlin_language_server.setup({
        capabilities = capabilities
      })
			lspconfig.spectral.setup({
        capabilities = capabilities
      })
			lspconfig.pyright.setup({
        capabilities = capabilities
      })

	    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ansiblels",
					"azure_pipelines_ls",
					"cucumber_language_server",
					"dockerls",
					"gradle_ls",
					"html",
					"helm_ls",
					"jsonls",
					"jdtls",
					"kotlin_language_server",
					"spectral",
					"pyright",
				},
			})
		end,
	},
}
