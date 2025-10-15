-- undefined theme main module
-- This is the entry point for the undefined colorscheme

local M = {}

-- Configuration
M.config = {
	transparent_background = false,
}

-- Helper function to apply highlight groups
local function apply_highlight(group, settings)
	local gui = {}

	if settings.fg then
		table.insert(gui, "guifg=" .. settings.fg)
	end

	if settings.bg and not M.config.transparent_background then
		table.insert(gui, "guibg=" .. settings.bg)
	end

	if settings.sp then
		table.insert(gui, "guisp=" .. settings.sp)
	end

	local gui_attrs = {}
	if settings.bold then table.insert(gui_attrs, "bold") end
	if settings.italic then table.insert(gui_attrs, "italic") end
	if settings.underline then table.insert(gui_attrs, "underline") end
	if settings.undercurl then table.insert(gui_attrs, "undercurl") end
	if settings.underlineline then table.insert(gui_attrs, "underlineline") end
	if settings.underdouble then table.insert(gui_attrs, "underdouble") end
	if settings.underdotted then table.insert(gui_attrs, "underdotted") end
	if settings.underdashed then table.insert(gui_attrs, "underdashed") end
	if settings.strikethrough then table.insert(gui_attrs, "strikethrough") end
	if settings.reverse then table.insert(gui_attrs, "reverse") end
	if settings.inverse then table.insert(gui_attrs, "inverse") end
	if settings.standout then table.insert(gui_attrs, "standout") end
	if settings.nocombine then table.insert(gui_attrs, "nocombine") end

	if #gui_attrs > 0 then
		table.insert(gui, "gui=" .. table.concat(gui_attrs, ","))
	elseif not settings.fg and not settings.bg and not settings.sp then
		-- If no colors and no attributes, set to NONE
		table.insert(gui, "gui=NONE")
	end

	local cmd = "highlight " .. group .. " " .. table.concat(gui, " ")
	vim.cmd(cmd)
end

function M.setup(opts)
	-- Merge user config with defaults
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})

	-- Reset colors
	if vim.g.colors_name then
		vim.cmd("highlight clear")
	end

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "undefined"

	-- Load color palette
	local colors = require("undefined.colors")

	-- Load theme highlight groups
	local theme = require("undefined.theme")
	local highlight_groups = theme.setup(colors)

	-- Apply all highlight groups
	for group, settings in pairs(highlight_groups) do
		apply_highlight(group, settings)
	end

	-- Make key backgrounds transparent if enabled
	if M.config.transparent_background then
		vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
		vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
		vim.cmd("highlight NormalFloat guibg=NONE ctermbg=NONE")
		vim.cmd("highlight SignColumn guibg=NONE ctermbg=NONE")
		vim.cmd("highlight FoldColumn guibg=NONE ctermbg=NONE")
	end

	-- Set terminal colors
	vim.g.terminal_color_0 = colors.bg
	vim.g.terminal_color_1 = colors.warning
	vim.g.terminal_color_2 = colors.keyword
	vim.g.terminal_color_3 = colors.bg4
	vim.g.terminal_color_4 = colors.func
	vim.g.terminal_color_5 = colors.builtin
	vim.g.terminal_color_6 = colors.fg3
	vim.g.terminal_color_7 = colors.str
	vim.g.terminal_color_8 = colors.bg2
	vim.g.terminal_color_9 = colors.warning2
	vim.g.terminal_color_10 = colors.fg2
	vim.g.terminal_color_11 = colors.var
	vim.g.terminal_color_12 = colors.type
	vim.g.terminal_color_13 = colors.const
	vim.g.terminal_color_14 = colors.fg4
	vim.g.terminal_color_15 = colors.comment
end

return M
