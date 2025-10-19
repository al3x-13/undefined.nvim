-- undefined color palette
-- All colors are defined in one centralized place

local colors = {
	-- Base colors
	bg = "#1f1f22",
	fg = "#e5f1f3",

	-- Foreground variations
	fg2 = "#d2dfe0",
	fg3 = "#c1cdce",
	fg4 = "#b0bbbc",

	-- Background variations
	bg2 = "#333333",
	bg3 = "#3c3c3c",
	bg4 = "#4f4f4f",

	-- Semantic colors
	keyword = "#69ccd3",
	-- keyword = "#37bec8", -- darker teal alternative
	-- keyword = "#50fa7b", -- bright green alternative
	-- keyword = "#e0e0e0", -- light gray alternative
	builtin = "#09bbc8",
	const = "#9f86f9",
	comment = "#646b6d",
	func = "#24a5f5",
	str = "#18cdf2",
	type = "#bdc8ca",
	var = "#c5d4d6",

	-- Status colors
	warning = "#f53250",
	warning2 = "#a6d10a",
	info = "#09bbc8",
	hint = "#18cdf2",

	-- Additional semantic colors for Treesitter
	namespace = "#bdc8ca",  -- Neutral gray like types
	module = "#bdc8ca",     -- Neutral gray like types
	macro = "#9f86f9",      -- Use purple like const
	parameter = "#adb6b8",  -- Neutral gray
	field = "#adb6b8",      -- Neutral gray
	property = "#adb6b8",   -- Neutral gray
	enum = "#bdc8ca",       -- Neutral gray, same as type
	enumMember = "#c5d0d2", -- Slightly lighter gray
	interface = "#bdc8ca",  -- Neutral gray, same as type
	struct = "#bdc8ca",     -- Neutral gray, same as type
	annotation = "#adb6b8", -- Neutral gray
	decorator = "#adb6b8",  -- Neutral gray
	punctuation = "#b0bbbc", -- fg3 for delimiters
	bracket = "#c1cdce",    -- fg2 for brackets
	special = "#d2dfe0",    -- Use main fg color
	escape = "#9f86f9",     -- Use purple like const
	regex = "#adb6b8",      -- Neutral gray
	uri = "#18cdf2",        -- Keep string color for links
	tag = "#24a5f5",        -- Keep keyword color for tags
	attribute_tag = "#adb6b8", -- Neutral gray
	label = "#c5d4d6",      -- Use var color

	-- Markdown specific
	heading = "#24a5f5",  -- keyword color
	emphasis = "#adb6b8", -- neutral gray for italic
	strong = "#f5f9f9",   -- func color for bold
	link = "#18cdf2",     -- string color
	code_inline = "#18cdf2", -- str color
	code_block = "#adb6b8", -- neutral gray

	-- Diff colors
	diff_add = "#a6d10a", -- warning2
	diff_delete = "#f53250", -- warning
	diff_change = "#09bbc8", -- builtin
	diff_text = "#24a5f5", -- keyword

	-- Special colors
	none = "NONE",
}

return colors
