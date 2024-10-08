require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Use a sub-list to run only the first available formatter
		javascript = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		-- running prettier first for React Native project
		typescriptreact = { "prettierd", "prettier", stop_after_first = true },
		javascriptreact = { "prettier", "prettierd", stop_after_first = true },
		-- Run multiple formatters sequentially
		go = { "goimports", "gopls" },
		rust = { "rustfmt" },
		markdown = { "prettierd" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
	formatters = {
		prettierd = {
			env = {
				PRETTIERD_DEFAULT_CONFIG = ".prettierrc",
			},
		},
	},
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
--     pattern = "*",
--     callback = function(args)
--         require("conform").format({ bufnr = args.buf })
--     end,
-- })
