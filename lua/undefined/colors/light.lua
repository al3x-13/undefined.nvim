-- undefined color palette - light variant
-- Light theme with inverted colors for daytime use

local colors = {
	-- Base colors
	bg = "#dcdee0",
	fg = "#1a1a1c",

	-- Foreground variations
	fg2 = "#252527",
	fg3 = "#303032",
	fg4 = "#3a3a3c",

	-- Background variations
	bg2 = "#cfd1d3",
	bg3 = "#cbcdcf",
	bg4 = "#b1b3b5",

	-- Semantic colors
	keyword = "#08aec4",
	builtin = "#08aec4",
	const = "#7c3aed",
	comment = "#95a1a5",
	func = "#0398e2",
	str = "#8b5cf6",
	type = "#627b87",
	var = "#2a3940",

	-- Status colors
	warning = "#dc2626",
	warning2 = "#16a34a",
	info = "#08aec4",
	hint = "#8b5cf6",

	-- Additional semantic colors for Treesitter
	namespace = "#627b87",
	module = "#627b87",
	macro = "#7c3aed",
	parameter = "#3d4f58",
	field = "#3d4f58",
	property = "#3d4f58",
	enum = "#627b87",
	enumMember = "#4a5d67",
	interface = "#627b87",
	struct = "#627b87",
	annotation = "#3d4f58",
	decorator = "#3d4f58",
	punctuation = "#08aec4",
	bracket = "#4a5d67",
	special = "#2a3940",
	escape = "#7c3aed",
	regex = "#3d4f58",
	uri = "#8b5cf6",
	tag = "#08aec4",
	attribute_tag = "#3d4f58",
	label = "#2a3940",

	-- Markdown specific
	heading = "#0398e2",
	emphasis = "#3d4f58",
	strong = "#0a0a0a",
	link = "#8b5cf6",
	code_inline = "#8b5cf6",
	code_block = "#3d4f58",

	-- Diff colors
	diff_add = "#16a34a",
	diff_delete = "#dc2626",
	diff_change = "#08aec4",
	diff_text = "#0398e2",

	-- Special colors
	none = "NONE",
}

return colors
