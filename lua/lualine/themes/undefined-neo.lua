-- undefined-neo lualine theme
local colors = require("undefined_neo.colors")

local undefined = {}
local highlight_bg = colors.lualine_highlight_bg
local section_b = { bg = colors.lualine_bg, fg = colors.lualine_muted_fg }
local section_c = { bg = colors.lualine_bg, fg = colors.func }
local section_x = { bg = colors.lualine_bg, fg = colors.lualine_muted_fg }
local section_y = { bg = colors.lualine_bg, fg = colors.fg4 }

undefined.normal = {
	a = { bg = highlight_bg, fg = colors.func, gui = "bold" },
	b = section_b,
	c = section_c,
	x = section_x,
	y = section_y,
	z = { bg = highlight_bg, fg = colors.func, gui = "bold" },
}

undefined.insert = {
	a = { bg = colors.func, fg = colors.bg, gui = "bold" },
	b = section_b,
	c = section_c,
	x = section_x,
	y = section_y,
	z = { bg = colors.func, fg = colors.bg, gui = "bold" },
}

undefined.visual = {
	a = { bg = colors.str, fg = colors.bg, gui = "bold" },
	b = section_b,
	c = section_c,
	x = section_x,
	y = section_y,
	z = { bg = colors.str, fg = colors.bg, gui = "bold" },
}

undefined.replace = {
	a = { bg = colors.warning, fg = colors.bg, gui = "bold" },
	b = section_b,
	c = section_c,
	x = section_x,
	y = section_y,
	z = { bg = colors.warning, fg = colors.bg, gui = "bold" },
}

undefined.command = {
	a = { bg = colors.keyword, fg = colors.bg, gui = "bold" },
	b = section_b,
	c = section_c,
	x = section_x,
	y = section_y,
	z = { bg = colors.keyword, fg = colors.bg, gui = "bold" },
}

undefined.inactive = {
	a = { bg = colors.lualine_bg, fg = colors.fg4 },
	b = { bg = colors.lualine_bg, fg = colors.comment },
	c = { bg = colors.lualine_bg, fg = colors.comment },
	x = { bg = colors.lualine_bg, fg = colors.comment },
	y = { bg = colors.lualine_bg, fg = colors.comment },
	z = { bg = colors.lualine_bg, fg = colors.fg4 },
}

return undefined
