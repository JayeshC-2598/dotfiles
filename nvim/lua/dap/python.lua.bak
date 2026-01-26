local dap = require("dap")

dap.adapters.python = {
	type = "executable",
	command = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python",
	args = { "-m", "debugpy.adapter" },
}

dap.configurations.python = {
	{
		type = "python",
		request = "launch",
		name = "Launch file",
		program = "${file}", -- debug the current file
		pythonPath = function()
			-- Check for activated virtualenv
			local venv_path = os.getenv("VIRTUAL_ENV")
			if venv_path then
				return venv_path .. "/bin/python"
			end

			-- If `.venv` folder exists in workspace, use that
			local cwd = vim.fn.getcwd()
			if vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
				return cwd .. "/.venv/bin/python"
			end

			-- fallback to system python3
			return "python3"
		end,
	},
}
