-- undefined color palette - darker variant
-- Darker background with brighter accents for enhanced contrast

local colors = {
	-- Base colors
	bg = "#141415",
	fg = "#ebf7fa",
	cursor = "#ebf7fa",
	cursorline = "#2f2f31",
	float_bg = "#202023",
	float_border = "#3d3d43",
	visual = "#2c2c2f",
	lualine_bg = "#1d1d20",
	lualine_highlight_bg = "#323236",
	lualine_muted_fg = "#a7b1b5",
	lualine_soft_fg = "#878f94",

	-- Foreground variations
	fg2 = "#dce9ea",
	fg3 = "#cbd7d8",
	fg4 = "#b0bbbc",

	-- Background variations
	bg2 = "#2f2f31",
	bg3 = "#232324",
	bg4 = "#3e3e41",

	-- Semantic colors
	keyword = "#5ce6e3",
	builtin = "#09bbc8",
	const = "#9f86f9",
	comment = "#747b7d",
	func = "#24a5f5",
	str = "#18cdf2",
	type = "#bdc8ca",
	var = "#dce4e5",

	-- Status colors
	warning = "#f53250",
	warning2 = "#a6d10a",
	info = "#09bbc8",
	hint = "#18cdf2",

	-- Additional semantic colors for Treesitter
	namespace = "#bdc8ca",
	module = "#bdc8ca",
	macro = "#9f86f9",
	parameter = "#adb6b8",
	field = "#adb6b8",
	property = "#adb6b8",
	enum = "#bdc8ca",
	enumMember = "#c5d0d2",
	interface = "#bdc8ca",
	struct = "#bdc8ca",
	annotation = "#adb6b8",
	decorator = "#adb6b8",
	punctuation = "#5ce6e3",
	bracket = "#c1cdce",
	special = "#dce9ea",
	escape = "#9f86f9",
	regex = "#adb6b8",
	uri = "#18cdf2",
	tag = "#5ce6e3",
	attribute_tag = "#adb6b8",
	label = "#d2dedf",

	-- Markdown specific
	heading = "#24a5f5",
	emphasis = "#adb6b8",
	strong = "#f5f9f9",
	link = "#18cdf2",
	code_inline = "#18cdf2",
	code_block = "#adb6b8",

	-- Diff colors
	diff_add = "#a6d10a",
	diff_delete = "#f53250",
	diff_change = "#09bbc8",
	diff_text = "#24a5f5",

	-- Special colors
	none = "NONE",
}

return colors
