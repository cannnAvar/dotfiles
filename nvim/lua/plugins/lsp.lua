local lsp = require("lspconfig")
local navic = require("nvim-navic")

lsp.lua_ls.setup
{
    on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
    end,
	settings =
	{
		Lua =
		{
			runtime =
			{
				version = "LuaJIT",
			},
			diagnostics =
			{
				globals =
				{
					"vim",
					"require"
				},
			},
			workspace =
			{
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
}

