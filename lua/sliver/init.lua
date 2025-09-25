local M = {}

function M.setup()
	vim.cmd 'highlight clear'
	vim.cmd 'syntax reset'
	vim.o.background = "dark"
	-- vim.o.termguicolors = true

	local colors = {
		black = "#2B2628",
		grey1 = "#453B3D",
		grey2 = "#7A6F72",
		white = "#D1D1C7",
		lavender = "#B399D4",
		green = "#A7D194",
		blue = "#93B3E6",
		peach = "#EEB4A5",
		orange = "#E99563",
		red = "#CB4D4D",
	}


	local highlights = {

		-- ui
		StatusLine = { bg = colors.grey1, fg = colors.white },
		LineNr = { fg = colors.grey2 },
		CursorLineNr = { fg = colors.white },
		Visual = { bg = colors.blue },
		Directory = { fg = colors.blue },
		MoreMsg = { fg = colors.blue },
		Question = { fg = colors.blue },
		QuickFixLine = { fg = colors.blue },
		CursorLine = { bg = colors.grey1 },
		SignColumn = { fg = colors.grey2 },
		WinSeparator = { fg = colors.white },
		Pmenu = { link = "Normal" },
		PmenuKind = { link = "Normal" },
		PmenuExtra = { link = "Normal" },
		PmenuSel = { bg = colors.grey1, fg = colors.white },
		PmenuKindSel = { link = "PmenuSel" },
		PmenuExtraSel = { link = "PmenuSel" },
		PmenuThumb = { bg = colors.white },
		PmenuSbar = { bg = colors.white },
		PmenuMatch = { fg = colors.blue },
		PmenuMatchSel = { fg = colors.blue },
		ComplMatchIns = { fg = colors.blue },
		NormalFloat = { bg = colors.grey1, fg = colors.white },
		DiagnosticWarn = { fg = colors.orange },
		DiagnosticError = { fg = colors.red },
		DiagnosticInfo = { fg = colors.blue },
		DiagnostiHint = { fg = colors.blue },
		DiagnosticUnderlineError = { undercurl = true, sp = colors.red },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colors.orange },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colors.blue },
		DiagnosticUnderlineHint = { undercurl = true, sp = colors.blue },
		DiagnosticUnderlineOk = { undercurl = true, sp = colors.green },
		DiagnosticOk = { fg = colors.green },

		-- syntax
		Normal = { bg = colors.black, fg = colors.white },
		Comment = { fg = colors.grey2 },
		String = { fg = colors.green },
		Keyword = { fg = colors.lavender },
		Identifier = { link = "Normal" },
		Function = { link = "Normal" },
		Type = { link = "Normal" },
		Delimiter = { fg = colors.peach },
		Special = { fg = colors.purple },
		-- Operator = { fg = colors.grey2 },
		Title = { fg = colors.peach },
		Constant = { fg = colors.blue },

		-- treesitter
		["@keyword"] = { link = "Keyword" },
		["@variable"] = { link = "Normal" },
		["@variable.member"] = { link = "Normal" },
		["@variable.builtin"] = { link = "Special" },
		["@property"] = { link = "Normal" },
		-- ["@module"] = { link = "Normal" },
		["@markup.heading"] = { link = "Title" },
		["@markup.list.markdown"] = { fg = colors.lavender },


		-- plugins
		MiniIconsAzure = { fg = colors.blue },
		MiniIconsBlue = { fg = colors.blue },
		MiniIconsCyan = { fg = colors.blue },
		MiniIconsGreen = { fg = colors.green },
		MiniIconsGrey = { fg = colors.grey1 },
		MiniIconsOrange = { fg = colors.orange },
		MiniIconsPurple = { fg = colors.lavender },
		MiniIconsRed = { fg = colors.red },
		MiniIconsYellow = { fg = colors.peach },

		MiniStatuslineDevinfo = { link = "StatusLine" },
		MiniStatuslineFileinfo = { link = "StatusLine" },
		MiniStatuslineFilename = { link = "StatusLine" },
		MiniStatuslineInactive = { fg = colors.fg, bg = colors.bg0 },
		MiniStatuslineModeCommand = { fg = colors.black, bg = colors.peach },
		MiniStatuslineModeInsert = { fg = colors.black, bg = colors.green },
		MiniStatuslineModeNormal = { fg = colors.black, bg = colors.lavender },
		-- MiniStatuslineModeOther = { fg = C.base, bg = C.teal, style = { "bold" } },
		-- MiniStatuslineModeReplace = { fg = C.base, bg = C.red, style = { "bold" } },
		MiniStatuslineModeVisual = { fg = colors.black, bg = colors.blue },

		MiniPickBorder = { fg = colors.white, bg = colors.black },
		-- MiniPickBorderBusy = { link = "CursorLineNr" },
		-- MiniPickBorderText = { link = "CursorLineNr" },
		-- MiniPickCursor = { link = "CursorLineNr" },
		-- MiniPickIconDirectory = { link = "CursorLineNr" },
		-- MiniPickIconFile = { link = "CursorLineNr" },
		-- MiniPickHeader = { link = "CursorLineNr" },
		MiniPickMatchCurrent = { bg = colors.grey1 },
		-- MiniPickMatchMarked = { link = "CursorLineNr" },
		MiniPickMatchRanges = { fg = colors.blue },
		MiniPickNormal = { link = "Normal" },
		-- MiniPickPreviewLine = { link = "CursorLineNr" },
		-- MiniPickPreviewRegion = { link = "CursorLineNr" },
		MiniPickPrompt = { link = "Normal" },
		MiniPickPromptCaret = { link = "Normal" },
		MiniPickPromptPrefix = { link = "Normal" },

		MiniFilesNormal = { link = "Normal" },
		MiniFilesBorder = { link = "Normal" },

		BlinkCmpLabelMatch = { link = "PmenuMatchSel" },
	}


	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
