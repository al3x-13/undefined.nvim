-- undefined color palette loader
-- Loads the appropriate color variant based on configuration

local M = {}

-- Get the variant from the main module's config
-- Falls back to checking global variables and finally to "base"
local function get_variant()
	-- First check if the main module has been loaded with config
	local ok, main = pcall(require, "undefined")
	if ok and main.config and main.config.variant then
		return main.config.variant
	end

	-- Fall back to global variable (for lualine and other integrations)
	if vim.g.undefined_variant then
		return vim.g.undefined_variant
	end

	-- Default to base variant
	return "base"
end

-- Load and return the selected variant's colors
local function load_colors()
	local variant = get_variant()

	-- Validate variant
	local valid_variants = { base = true, darker = true, light = true }
	if not valid_variants[variant] then
		vim.notify(
			string.format(
				"undefined.nvim: Invalid variant '%s'. Valid options are: base, darker, light. Falling back to 'base'.",
				variant
			),
			vim.log.levels.WARN
		)
		variant = "base"
	end

	-- Load the variant module
	local ok, colors = pcall(require, "undefined.colors." .. variant)
	if not ok then
		vim.notify(
			string.format(
				"undefined.nvim: Failed to load variant '%s'. Falling back to 'base'.",
				variant
			),
			vim.log.levels.ERROR
		)
		return require("undefined.colors.base")
	end

	return colors
end

-- Return the colors table (not a metatable, just the loaded colors)
return load_colors()
