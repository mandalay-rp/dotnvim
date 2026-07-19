vim.pack.add({
	"https://github.com/feakuru/mypy.nvim",
})
require("mypy").setup({
	-- additional arguments to pass to invocations of `mypy`
	-- by default, it is called with `--show-error-end --follow-imports=silent`
	extra_args = {
		"--check-untyped-defs",
		"--ignore-missing-imports",
		"--disable-error-code=var-annotated",
		"--no-warn-no-return",
		"--verbose",
	},
	-- override mypy diagnostic severities
	-- the default is { error = vim.diagnostic.severity.WARN, note = vim.diagnostic.severity.HINT }
	severities = { error = vim.diagnostic.severity.ERROR, note = vim.diagnostic.severity.INFO },
})
