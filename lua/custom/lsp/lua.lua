return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	-- capabilities = {},
	settings = {
		Lua = {
			completion = {
				callSnippet = "Replace",
			},
			-- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
			-- diagnostics = { disable = { 'missing-fields' } },
		},
	},
}
