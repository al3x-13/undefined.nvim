-- undefined-neo theme main module

local M = {}

local function setup_float_borders()
	local border = "rounded"
	vim.o.winborder = border
	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border })
	vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border })
	vim.diagnostic.config({ float = { border = border } })
end

M.config = {
	variant = "base",
	transparent_background = false,
}

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
		table.insert(gui, "gui=NONE")
	end

	vim.cmd("highlight " .. group .. " " .. table.concat(gui, " "))
end

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
	vim.g.undefined_neo_variant = M.config.variant

	if vim.g.colors_name then
		vim.cmd("highlight clear")
	end

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.opt.guicursor = table.concat({
		"n-v-c:block-Cursor",
		"i-ci-ve:ver25-Cursor",
		"r-cr-o:hor20-Cursor",
	}, ",")
	vim.g.colors_name = "undefined-neo"

	package.loaded["undefined_neo.colors"] = nil
	package.loaded["undefined_neo.colors.base"] = nil
	package.loaded["undefined_neo.colors.darker"] = nil
	package.loaded["undefined_neo.colors.light"] = nil
	package.loaded["undefined.theme"] = nil

	local colors = require("undefined_neo.colors")
	local theme = require("undefined.theme")
	local highlight_groups = theme.setup(colors)

	for group, settings in pairs(highlight_groups) do
		apply_highlight(group, settings)
	end

	setup_float_borders()

	if M.config.transparent_background then
		vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
		vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
		vim.cmd("highlight NormalFloat guibg=NONE ctermbg=NONE")
		vim.cmd("highlight SignColumn guibg=NONE ctermbg=NONE")
		vim.cmd("highlight FoldColumn guibg=NONE ctermbg=NONE")
	end

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

	if vim.fn.exists(":IBLDisable") > 0 then
		vim.schedule(function()
			vim.cmd("IBLDisable")
			vim.cmd("IBLEnable")
		end)
	end

	local ok, lualine = pcall(require, "lualine")
	if ok then
		vim.schedule(function()
			package.loaded["lualine.themes.undefined-neo"] = nil
			lualine.setup(lualine.get_config())
		end)
	end
end

function M.set_variant(variant)
	local valid_variants = { base = true, darker = true, light = true }
	if not valid_variants[variant] then
		vim.notify(
			string.format(
				"undefined-neo.nvim: Invalid variant '%s'. Valid options are: base, darker, light",
				variant
			),
			vim.log.levels.ERROR
		)
		return
	end

	M.setup({ variant = variant, transparent_background = M.config.transparent_background })
	vim.notify(string.format("undefined-neo.nvim: Switched to '%s' variant", variant), vim.log.levels.INFO)
end

vim.api.nvim_create_user_command("UndefinedNeoVariant", function(opts)
	local variant = opts.args
	if variant == "" then
		vim.notify(string.format("Current undefined-neo variant: %s", M.config.variant), vim.log.levels.INFO)
	else
		M.set_variant(variant)
	end
end, {
	nargs = "?",
	complete = function()
		return { "base", "darker", "light" }
	end,
	desc = "Set undefined-neo variant (base, darker, or light)",
})

return M
