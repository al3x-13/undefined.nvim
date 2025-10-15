-- undefined lualine theme
local colors = require("undefined.colors")

local undefined = {}

undefined.normal = {
	a = { bg = colors.func, fg = colors.bg, gui = "bold" },
	b = { bg = colors.bg3, fg = colors.fg },
	c = { bg = colors.bg2, fg = colors.fg3 },
}

undefined.insert = {
	a = { bg = colors.keyword, fg = colors.bg, gui = "bold" },
	b = { bg = colors.bg3, fg = colors.fg },
	c = { bg = colors.bg2, fg = colors.fg3 },
}

undefined.visual = {
	a = { bg = colors.const, fg = colors.bg, gui = "bold" },
	b = { bg = colors.bg3, fg = colors.fg },
	c = { bg = colors.bg2, fg = colors.fg3 },
}

undefined.replace = {
	a = { bg = colors.warning, fg = colors.bg, gui = "bold" },
	b = { bg = colors.bg3, fg = colors.fg },
	c = { bg = colors.bg2, fg = colors.fg3 },
}

undefined.command = {
	a = { bg = colors.func, fg = colors.bg, gui = "bold" },
	b = { bg = colors.bg3, fg = colors.fg },
	c = { bg = colors.bg2, fg = colors.fg3 },
}

undefined.inactive = {
	a = { bg = colors.bg2, fg = colors.fg4 },
	b = { bg = colors.bg2, fg = colors.fg4 },
	c = { bg = colors.bg2, fg = colors.fg4 },
}

return undefined
