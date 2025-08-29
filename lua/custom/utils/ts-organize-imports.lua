local function organize_imports()
	local ft = vim.bo.filetype
	if not vim.tbl_contains({ "javascript", "typescript" }, ft) then
		return
	end
	local ok = vim.lsp.buf_request_sync(0, "workspace/executeCommand", {
		command = ("_" .. ft .. ".organizeImports"),
		arguments = { vim.api.nvim_buf_get_name(0) },
	}, 3000)
	if not ok then
		print("OrganizeImports: Command timeout or failed to complete.")
	end
end

return {
	organize_imports = organize_imports,
}
