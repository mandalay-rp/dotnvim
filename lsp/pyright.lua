return {
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = { "python" },
	root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", ".git", ".venv", "Pipfile" },
	init_options = {
		settings = {
			-- logLevel = 'debug',
			-- language server settings go here
			-- args = { },
		},
	},
}
