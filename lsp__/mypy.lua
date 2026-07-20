-- Ruff
return {
	cmd = { "mypy", vim.api.nvim_buf_get_name(0) },
	filetypes = { "python" },
	root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", ".git", ".venv", "Pipfile" },
	init_options = {
		settings = {
			-- logLevel = 'debug',
			-- Ruff language server settings go here
			args = {
				"--check-untyped-defs",
				"--ignore-missing-imports",
				"--disable-error-code=var-annotated",
				"--no-warn-no-return",
			},
		},
	},
}

-- Mypy
-- return {
--   cmd = { 'mypy' },
--   filetypes = { 'python' },
--   root_markers = { 'pyproject.toml', 'ruff.toml', '.ruff.toml', '.git' , '.venv', 'Pipfile'},
--   init_options = {
--     settings = {
--     logLevel = 'debug',
--       -- Ruff language server settings go here
--         args = {
--                 '--check-untyped-defs',
--                 '--ignore-missing-imports',
--                 '--disable-error-code=var-annotated',
--                 '--no-warn-no-return',
--         },
--     }
--   }
-- }
