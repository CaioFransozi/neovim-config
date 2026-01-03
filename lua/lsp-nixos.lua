	local fd_os_release = assert(io.open("/etc/os-release"), "r")
	local s_os_release = fd_os_release:read("*a")
	fd_os_release:close()
	s_os_release = s_os_release:lower()
	local is_nixos = s_os_release:match("nixos")
	
	if is_nixos ~= nil then
		vim.lsp.enable('lua_ls')
		vim.lsp.enable('rust-analyzer')
		vim.lsp.config('rust-analyzer', {})
		vim.lsp.enable('clangd')
		vim.lsp.enable('bashls')
		vim.lsp.enable('nil_ls')
	end
