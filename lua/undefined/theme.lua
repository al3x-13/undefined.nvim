-- undefined theme highlight groups
-- This module applies all the highlight groups using the centralized color palette

local M = {}

function M.setup(colors)
	local theme = {}

	-- Editor UI
	theme.Normal = { fg = colors.fg, bg = colors.bg }
	theme.NormalFloat = { fg = colors.fg, bg = colors.bg }
	theme.NormalNC = { fg = colors.fg, bg = colors.bg }
	theme.Cursor = { fg = colors.bg, bg = colors.fg }
	theme.CursorLine = { bg = colors.bg2 }
	theme.CursorLineNr = { fg = colors.keyword, bg = colors.bg2, bold = true }
	theme.CursorColumn = { bg = colors.bg2 }
	theme.ColorColumn = { bg = colors.bg2 }
	theme.FoldColumn = { fg = colors.comment, bg = colors.bg }
	theme.SignColumn = { fg = colors.comment, bg = colors.bg }
	theme.LineNr = { fg = colors.bg4, bg = colors.bg }
	theme.VertSplit = { fg = colors.bg4, bg = colors.bg }
	theme.WinSeparator = { fg = colors.bg4, bg = colors.bg }
	theme.Folded = { fg = colors.fg4, bg = colors.bg }

	-- Statusline
	theme.StatusLine = { fg = colors.fg2, bg = colors.bg3, bold = true }
	theme.StatusLineNC = { fg = colors.fg3, bg = colors.bg }

	-- Popups and menus
	theme.Pmenu = { fg = colors.fg, bg = colors.bg2 }
	theme.PmenuSel = { bg = colors.bg3 }
	theme.PmenuSbar = { bg = colors.bg2 }
	theme.PmenuThumb = { bg = colors.bg3 }
	theme.WildMenu = { fg = colors.str, bg = colors.bg }

	-- Search
	theme.IncSearch = { fg = colors.bg, bg = colors.keyword }
	theme.Search = { underline = true }
	theme.MatchParen = { fg = colors.warning2 }

	-- Messages and errors
	theme.ErrorMsg = { fg = colors.warning, bg = colors.bg, bold = true }
	theme.WarningMsg = { fg = colors.fg, bg = colors.warning2 }
	theme.ModeMsg = { fg = colors.fg, bg = colors.bg }
	theme.MoreMsg = { fg = colors.fg, bg = colors.bg }
	theme.Question = { fg = colors.str, bg = colors.bg }

	-- Misc
	theme.Directory = { fg = colors.const }
	theme.Title = { fg = colors.fg, bold = true }
	theme.NonText = { fg = colors.bg4, bg = colors.bg }
	theme.SpecialKey = { fg = colors.fg2, bg = colors.bg }
	theme.Visual = { bg = colors.bg2 }
	theme.VisualNOS = { bg = colors.bg2 }

	-- Diff
	theme.DiffAdd = { fg = "#fafafa", bg = "#123d0f", bold = true }
	theme.DiffDelete = { bg = colors.bg2 }
	theme.DiffChange = { bg = "#151b3c", fg = "#fafafa" }
	theme.DiffText = { fg = "#ffffff", bg = "#ff0000", bold = true }

	-- Syntax highlighting
	theme.Comment = { fg = colors.comment }
	theme.Constant = { fg = colors.const, bold = true }
	theme.String = { fg = colors.str }
	theme.Character = { fg = colors.const }
	theme.Number = { fg = colors.const }
	theme.Boolean = { fg = colors.const, bold = true }
	theme.Float = { fg = colors.const }

	theme.Identifier = { fg = colors.type, italic = true }
	theme.Function = { fg = colors.func, bold = true }

	theme.Statement = { fg = colors.keyword, bold = true }
	theme.Conditional = { fg = colors.keyword, bold = true }
	theme.Repeat = { fg = colors.keyword, bold = true }
	theme.Label = { fg = colors.var }
	theme.Operator = { fg = colors.keyword }
	theme.Keyword = { fg = colors.keyword, bold = true }
	theme.Exception = { fg = colors.keyword, bold = true }

	theme.PreProc = { fg = colors.keyword, bold = true }
	theme.Include = { fg = colors.keyword, bold = true }
	theme.Define = { fg = colors.keyword, bold = true }
	theme.Macro = { fg = colors.keyword, bold = true }
	theme.PreCondit = { fg = colors.keyword, bold = true }

	theme.Type = { fg = colors.type, bold = true }
	theme.StorageClass = { fg = colors.type, bold = true, italic = true }
	theme.Structure = { fg = colors.type, bold = true }
	theme.Typedef = { fg = colors.type, bold = true }

	theme.Special = { fg = colors.fg }
	theme.SpecialChar = { fg = colors.fg }
	theme.Tag = { fg = colors.keyword }
	theme.Delimiter = { fg = colors.fg }
	theme.SpecialComment = { fg = colors.comment }
	theme.Debug = { fg = colors.warning }

	theme.Underlined = { underline = true }
	theme.Ignore = { fg = colors.bg4 }
	theme.Error = { fg = colors.warning, bg = colors.bg }
	theme.Todo = { fg = colors.warning2, bold = true }

	-- Treesitter Syntax Groups
	-- Comments
	theme["@comment"] = { fg = colors.comment }
	theme["@comment.documentation"] = { fg = colors.comment, italic = true }
	theme["@comment.error"] = { fg = colors.warning, bg = colors.bg }
	theme["@comment.warning"] = { fg = colors.warning2, bg = colors.bg }
	theme["@comment.note"] = { fg = colors.info, bg = colors.bg }
	theme["@comment.todo"] = { fg = colors.warning2, bold = true }

	-- Constants
	theme["@constant"] = { fg = colors.const, bold = true }
	theme["@constant.builtin"] = { fg = colors.builtin, bold = true }
	theme["@constant.macro"] = { fg = colors.macro, bold = true }

	-- Strings
	theme["@string"] = { fg = colors.str }
	theme["@string.documentation"] = { fg = colors.str, italic = true }
	theme["@string.regex"] = { fg = colors.regex }
	theme["@string.escape"] = { fg = colors.escape }
	theme["@string.special"] = { fg = colors.special }
	theme["@string.special.symbol"] = { fg = colors.special }
	theme["@string.special.url"] = { fg = colors.uri }
	theme["@string.special.path"] = { fg = colors.uri }

	-- Characters
	theme["@character"] = { fg = colors.const }
	theme["@character.special"] = { fg = colors.special }

	-- Numbers
	theme["@number"] = { fg = colors.const }
	theme["@number.float"] = { fg = colors.const }

	-- Booleans
	theme["@boolean"] = { fg = colors.const, bold = true }

	-- Functions
	theme["@function"] = { fg = colors.func, bold = true }
	theme["@function.builtin"] = { fg = colors.builtin, bold = true }
	theme["@function.call"] = { fg = colors.func, bold = true }
	theme["@function.macro"] = { fg = colors.macro, bold = true }
	theme["@function.method"] = { fg = colors.func, bold = true }
	theme["@function.method.call"] = { fg = colors.func, bold = true }

	-- Constructors
	theme["@constructor"] = { fg = colors.type, bold = true }
	theme["@constructor.lua"] = { fg = colors.punctuation }

	-- Parameters
	theme["@variable.parameter"] = { fg = colors.parameter }
	theme["@variable.parameter.builtin"] = { fg = colors.builtin }

	-- Keywords
	theme["@keyword"] = { fg = colors.keyword, bold = true }
	theme["@keyword.coroutine"] = { fg = colors.keyword, bold = true }
	theme["@keyword.function"] = { fg = colors.keyword, bold = true }
	theme["@keyword.operator"] = { fg = colors.keyword }
	theme["@keyword.import"] = { fg = colors.keyword, bold = true }
	theme["@keyword.storage"] = { fg = colors.keyword }
	theme["@keyword.repeat"] = { fg = colors.keyword }
	theme["@keyword.return"] = { fg = colors.keyword, bold = true }
	theme["@keyword.debug"] = { fg = colors.warning }
	theme["@keyword.exception"] = { fg = colors.keyword }
	theme["@keyword.conditional"] = { fg = colors.keyword }
	theme["@keyword.conditional.ternary"] = { fg = colors.keyword }
	theme["@keyword.directive"] = { fg = colors.keyword }
	theme["@keyword.directive.define"] = { fg = colors.keyword }

	-- Conditionals & Loops
	theme["@conditional"] = { fg = colors.keyword }
	theme["@conditional.ternary"] = { fg = colors.keyword }
	theme["@repeat"] = { fg = colors.keyword }

	-- Operators
	theme["@operator"] = { fg = colors.keyword }

	-- Exceptions
	theme["@exception"] = { fg = colors.keyword }

	-- Variables
	theme["@variable"] = { fg = colors.var }
	theme["@variable.builtin"] = { fg = colors.builtin }
	theme["@variable.member"] = { fg = colors.field }

	-- Types
	theme["@type"] = { fg = colors.type, bold = true }
	theme["@type.builtin"] = { fg = colors.type, bold = true }
	theme["@type.definition"] = { fg = colors.type, bold = true }
	theme["@type.qualifier"] = { fg = colors.keyword, bold = true }

	-- Properties & Fields
	theme["@property"] = { fg = colors.property }
	theme["@field"] = { fg = colors.field }

	-- Modules & Namespaces
	theme["@module"] = { fg = colors.module }
	theme["@module.builtin"] = { fg = colors.builtin }
	theme["@namespace"] = { fg = colors.namespace }

	-- Attributes & Annotations
	theme["@attribute"] = { fg = colors.annotation }
	theme["@attribute.builtin"] = { fg = colors.builtin }
	theme["@annotation"] = { fg = colors.annotation }
	theme["@decorator"] = { fg = colors.decorator }

	-- Labels
	theme["@label"] = { fg = colors.label }

	-- Punctuation
	theme["@punctuation"] = { fg = colors.punctuation }
	theme["@punctuation.delimiter"] = { fg = colors.punctuation }
	theme["@punctuation.bracket"] = { fg = colors.bracket }
	theme["@punctuation.special"] = { fg = colors.special }

	-- Tags (HTML, XML, JSX)
	theme["@tag"] = { fg = colors.tag }
	theme["@tag.builtin"] = { fg = colors.builtin }
	theme["@tag.attribute"] = { fg = colors.attribute_tag }
	theme["@tag.delimiter"] = { fg = colors.punctuation }

	-- Markup (Markdown, RST, etc.)
	theme["@markup"] = { fg = colors.fg }
	theme["@markup.strong"] = { fg = colors.strong, bold = true }
	theme["@markup.emphasis"] = { fg = colors.emphasis, italic = true }
	theme["@markup.underline"] = { underline = true }
	theme["@markup.strike"] = { strikethrough = true }
	theme["@markup.heading"] = { fg = colors.heading, bold = true }
	theme["@markup.heading.1"] = { fg = colors.heading, bold = true }
	theme["@markup.heading.2"] = { fg = colors.heading, bold = true }
	theme["@markup.heading.3"] = { fg = colors.heading, bold = true }
	theme["@markup.heading.4"] = { fg = colors.heading, bold = true }
	theme["@markup.heading.5"] = { fg = colors.heading, bold = true }
	theme["@markup.heading.6"] = { fg = colors.heading, bold = true }
	theme["@markup.quote"] = { fg = colors.comment, italic = true }
	theme["@markup.math"] = { fg = colors.builtin }
	theme["@markup.link"] = { fg = colors.link, underline = true }
	theme["@markup.link.label"] = { fg = colors.label }
	theme["@markup.link.url"] = { fg = colors.uri, underline = true }
	theme["@markup.raw"] = { fg = colors.code_inline }
	theme["@markup.raw.block"] = { fg = colors.code_block }
	theme["@markup.list"] = { fg = colors.keyword }
	theme["@markup.list.checked"] = { fg = colors.diff_add }
	theme["@markup.list.unchecked"] = { fg = colors.fg3 }

	-- Diff
	theme["@diff.plus"] = { fg = colors.diff_add }
	theme["@diff.minus"] = { fg = colors.diff_delete }
	theme["@diff.delta"] = { fg = colors.diff_change }

	-- Language-specific
	-- LSP Semantic Tokens
	theme["@lsp.type.class"] = { fg = colors.type }
	theme["@lsp.type.decorator"] = { fg = colors.decorator }
	theme["@lsp.type.enum"] = { fg = colors.enum }
	theme["@lsp.type.enumMember"] = { fg = colors.enumMember }
	theme["@lsp.type.function"] = { fg = colors.func }
	theme["@lsp.type.interface"] = { fg = colors.interface }
	theme["@lsp.type.macro"] = { fg = colors.macro }
	theme["@lsp.type.method"] = { fg = colors.func }
	theme["@lsp.type.namespace"] = { fg = colors.namespace }
	theme["@lsp.type.parameter"] = { fg = colors.parameter }
	theme["@lsp.type.property"] = { fg = colors.property }
	theme["@lsp.type.struct"] = { fg = colors.struct }
	theme["@lsp.type.type"] = { fg = colors.type }
	theme["@lsp.type.typeParameter"] = { fg = colors.type }
	theme["@lsp.type.variable"] = { fg = colors.var }

	-- Special syntax groups
	theme["@none"] = { fg = colors.none }
	theme["@conceal"] = { fg = colors.comment }
	theme["@spell"] = {}
	theme["@nospell"] = {}

	-- LSP
	theme.LspReferenceText = { bg = colors.bg2 }
	theme.LspReferenceRead = { bg = colors.bg2 }
	theme.LspReferenceWrite = { bg = colors.bg2 }

	theme.DiagnosticError = { fg = colors.warning }
	theme.DiagnosticWarn = { fg = colors.warning2 }
	theme.DiagnosticInfo = { fg = colors.str }
	theme.DiagnosticHint = { fg = colors.comment }

	theme.DiagnosticUnderlineError = { undercurl = true, sp = colors.warning }
	theme.DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning2 }
	theme.DiagnosticUnderlineInfo = { undercurl = true, sp = colors.str }
	theme.DiagnosticUnderlineHint = { undercurl = true, sp = colors.comment }

	-- Git signs
	theme.GitSignsAdd = { fg = colors.warning2, bg = colors.bg }
	theme.GitSignsChange = { fg = colors.str, bg = colors.bg }
	theme.GitSignsDelete = { fg = colors.warning, bg = colors.bg }

	-- Telescope
	theme.TelescopeBorder = { fg = colors.bg4, bg = colors.bg }
	theme.TelescopeNormal = { fg = colors.fg, bg = colors.bg }
	theme.TelescopeSelection = { bg = colors.bg2 }

	-- NvimTree
	theme.NvimTreeNormal = { fg = colors.fg, bg = colors.bg }
	theme.NvimTreeNormalNC = { fg = colors.fg, bg = colors.bg }
	theme.NvimTreeRootFolder = { fg = colors.keyword, bold = true }
	theme.NvimTreeFolderName = { fg = colors.const }
	theme.NvimTreeFolderIcon = { fg = colors.const }
	theme.NvimTreeEmptyFolderName = { fg = colors.comment }
	theme.NvimTreeOpenedFolderName = { fg = colors.const, bold = true }
	theme.NvimTreeSymlink = { fg = colors.str }
	theme.NvimTreeGitDirty = { fg = colors.warning2 }
	theme.NvimTreeGitNew = { fg = colors.warning2 }
	theme.NvimTreeGitDeleted = { fg = colors.warning }
	theme.NvimTreeSpecialFile = { fg = colors.fg, underline = true }
	theme.NvimTreeIndentMarker = { fg = colors.comment }
	theme.NvimTreeImageFile = { fg = colors.fg }
	theme.NvimTreeEndOfBuffer = { fg = colors.bg }
	theme.NvimTreeWinSeparator = { fg = colors.fg3, bg = colors.bg }

	-- Indent Blankline
	theme.IblIndent = { fg = colors.bg3 }
	theme.IblWhitespace = { fg = colors.bg3 }
	theme.IblScope = { fg = colors.bg4 }

	-- Language specific (legacy support)
	-- Ruby
	theme.rubyAttribute = { fg = colors.builtin }
	theme.rubyLocalVariableOrMethod = { fg = colors.var }
	theme.rubyGlobalVariable = { fg = colors.var, italic = true }
	theme.rubyInstanceVariable = { fg = colors.var }
	theme.rubyKeyword = { fg = colors.keyword }
	theme.rubyKeywordAsMethod = { fg = colors.keyword, bold = true }
	theme.rubyClassDeclaration = { fg = colors.keyword, bold = true }
	theme.rubyClass = { fg = colors.keyword, bold = true }
	theme.rubyNumber = { fg = colors.const }

	-- Python
	theme.pythonBuiltinFunc = { fg = colors.builtin }

	-- Go
	theme.goBuiltins = { fg = colors.builtin }

	-- JavaScript
	theme.jsBuiltins = { fg = colors.builtin }
	theme.jsFunction = { fg = colors.keyword, bold = true }
	theme.jsGlobalObjects = { fg = colors.type }
	theme.jsAssignmentExps = { fg = colors.var }

	-- HTML
	theme.htmlLink = { fg = colors.var, underline = true }
	theme.htmlStatement = { fg = colors.keyword }
	theme.htmlSpecialTagName = { fg = colors.keyword }

	-- Markdown
	theme.mkdCode = { fg = colors.builtin }

	return theme
end

return M
