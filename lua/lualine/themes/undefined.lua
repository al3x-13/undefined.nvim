-- undefined lualine theme
local colors = require("undefined.colors")

local undefined = {}

undefined.normal = {
	a = { bg = colors.func, fg = colors.bg, gui = "bold" },
	b = { bg = colors.bg3, fg = colors.fg },
	c = { bg = colors.bg2, fg = colors.fg3 },
	x = { bg = colors.bg2, fg = colors.fg3 },
	y = { bg = colors.bg3, fg = colors.fg },
	z = { bg = colors.func, fg = colors.bg, gui = "bold" },
}

undefined.insert = {
	a = { bg = colors.keyword, fg = colors.bg, gui = "bold" },
	b = { bg = colors.bg3, fg = colors.fg },
	c = { bg = colors.bg2, fg = colors.fg3 },
	x = { bg = colors.bg2, fg = colors.fg3 },
	y = { bg = colors.bg3, fg = colors.fg },
	z = { bg = colors.keyword, fg = colors.bg, gui = "bold" },
}

undefined.visual = {
	a = { bg = colors.const, fg = colors.bg, gui = "bold" },
	b = { bg = colors.bg3, fg = colors.fg },
	c = { bg = colors.bg2, fg = colors.fg3 },
	x = { bg = colors.bg2, fg = colors.fg3 },
	y = { bg = colors.bg3, fg = colors.fg },
	z = { bg = colors.const, fg = colors.bg, gui = "bold" },
}

undefined.replace = {
	a = { bg = colors.warning, fg = colors.bg, gui = "bold" },
	b = { bg = colors.bg3, fg = colors.fg },
	c = { bg = colors.bg2, fg = colors.fg3 },
	x = { bg = colors.bg2, fg = colors.fg3 },
	y = { bg = colors.bg3, fg = colors.fg },
	z = { bg = colors.warning, fg = colors.bg, gui = "bold" },
}

undefined.command = {
	a = { bg = colors.func, fg = colors.bg, gui = "bold" },
	b = { bg = colors.bg3, fg = colors.fg },
	c = { bg = colors.bg2, fg = colors.fg3 },
	x = { bg = colors.bg2, fg = colors.fg3 },
	y = { bg = colors.bg3, fg = colors.fg },
	z = { bg = colors.func, fg = colors.bg, gui = "bold" },
}

undefined.inactive = {
	a = { bg = colors.bg2, fg = colors.fg4 },
	b = { bg = colors.bg2, fg = colors.fg4 },
	c = { bg = colors.bg2, fg = colors.fg4 },
	x = { bg = colors.bg2, fg = colors.fg4 },
	y = { bg = colors.bg2, fg = colors.fg4 },
	z = { bg = colors.bg2, fg = colors.fg4 },
}

return undefined
