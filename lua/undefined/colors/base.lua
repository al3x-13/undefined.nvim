-- undefined color palette - base variant
-- Original colors with balanced contrast

local colors = {
	-- Base colors
	bg = "#1f1f22",
	fg = "#e5f1f3",
	cursor = "#e5f1f3",
	cursorline = "#333333",
	float_bg = "#2a2a2e",
	float_border = "#4a4a52",
	visual = "#3c3c3c",
	lualine_bg = "#28282c",
	lualine_highlight_bg = "#3d3d44",
	lualine_muted_fg = "#9ea8ac",
	lualine_soft_fg = "#7f888d",

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
	punctuation = "#b0bbbc",
	bracket = "#c1cdce",
	special = "#d2dfe0",
	escape = "#9f86f9",
	regex = "#adb6b8",
	uri = "#18cdf2",
	tag = "#24a5f5",
	attribute_tag = "#adb6b8",
	label = "#c5d4d6",

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
