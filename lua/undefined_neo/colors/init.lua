-- undefined-neo color palette loader

local function get_variant()
	local ok, main = pcall(require, "undefined_neo")
	if ok and main.config and main.config.variant then
		return main.config.variant
	end

	if vim.g.undefined_neo_variant then
		return vim.g.undefined_neo_variant
	end

	return "base"
end

local function load_colors()
	local variant = get_variant()
	local valid_variants = { base = true, darker = true, light = true }

	if not valid_variants[variant] then
		vim.notify(
			string.format(
				"undefined-neo.nvim: Invalid variant '%s'. Valid options are: base, darker, light. Falling back to 'base'.",
				variant
			),
			vim.log.levels.WARN
		)
		variant = "base"
	end

	local ok, colors = pcall(require, "undefined_neo.colors." .. variant)
	if not ok then
		vim.notify(
			string.format(
				"undefined-neo.nvim: Failed to load variant '%s'. Falling back to 'base'.",
				variant
			),
			vim.log.levels.ERROR
		)
		return require("undefined_neo.colors.base")
	end

	return colors
end

return load_colors()
