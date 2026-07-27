" =============================================================
" | Kanagawa Vim theme by deltadev-rsc.                       |
" | like https://github.com/menisadi/kanagawa.vim, but better |
" | And with airline/lightline theme support                  |
" =============================================================

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name = "kanagawa"
let s:kanagawa_vim_verison = "0.0.1"
set background=dark

" +-----------+
" | truecolor |
" +-----------+
let s:backgound = "#1f1f28"
let s:foreground = "#DCD7BA"
let s:selection_background = "#2D4F67"
let s:selection_foreground = "#C8C093"
let s:cursor = "#C8C093"
let s:cursor_text = "#16161D"
let s:url = "#7E9CD8"

let s:kanagawa0_gui = "#1f1f28"
let s:kanagawa1_gui = "#2a2a37"
let s:kanagawa2_gui = "#363646"
let s:kanagawa3_gui = "#48485a"
let s:kanagawa3_gui_bright = "#54546d"
let s:kanagawa4_gui = "#dcd7ba"
let s:kanagawa5_gui = "#e6e2c8"
let s:kanagawa6_gui = "#eff1f5"
let s:kanagawa7_gui = "#72948d"
let s:kanagawa8_gui = "#7e9cd8"
let s:kanagawa9_gui = "#8daadc"
let s:kanagawa10_gui = "#5e81ac"
let s:kanagawa11_gui = "#c34043"
let s:kanagawa12_gui = "#cda45e"
let s:kanagawa13_gui = "#e6c384"
let s:kanagawa14_gui = "#76946a"
let s:kanagawa15_gui = "#957fb8"

" optional for 256-color support
let s:color16_gui = "#FFA066"
let s:color17_gui = "#FF5D62"

" +-----------------------+
" | 16-bits colors (ANSI) |
" +-----------------------+
let s:kanagawa1_term = "0"
let s:kanagawa3_term = "8"
let s:kanagawa5_term = "7"
let s:kanagawa6_term = "15"
let s:kanagawa7_term = "14"
let s:kanagawa8_term = "6"
let s:kanagawa9_term = "4"
let s:kanagawa10_term = "12"
let s:kanagawa11_term = "1"
let s:kanagawa12_term = "11"
let s:kanagawa13_term = "3"
let s:kanagawa14_term = "2"
let s:kanagawa15_term = "5"

let s:kanagawa3_gui_brightened = [
    \ s:kanagawa3_gui,
    \ "#49495b",
    \ "#4a4a5c",
    \ "#4b4b5d",
    \ "#4c4c5e",
    \ "#4d4d5f",
    \ "#4e4e60",
    \ "#4f4f61",
    \ "#505062",
    \ "#515163",
    \ "#525264",
    \ "#535365",
    \ "#535366",
    \ "#545467",
    \ "#545468",
    \ "#545469",
    \ "#54546a",
    \ "#54546b",
    \ "#54546c",
    \ "#54546d",
    \ "#54546d",
\ ]

" +---------------+
" | UI components |
" +---------------+
let g:kanagawa_bold = get(g:, "kanagawa_bold", 1)
let s:bold = (g:kanagawa_bold == 0) ? "" : "bold,"
let g:kanagawa_underline = get(g:, "kanagawa_underline", 1)
let s:underline = (g:kanagawa_underline == 0) ? "NONE," : "underline,"
let g:kanagawa_italic = get(g:, "kanagawa_italic", (has("gui_gunning") || $TERM_ITALICS == "true"))
let s:italic = (g:kanagawa_italic == 0) ? "" : "italic,"
let g:kanagawa_italic_comments = get(g:, "kanagawa_italic_comments", 0)
let s:italicize_comments = (g:kanagawa_italic_comments == 0) ? "" : get(s:, "italic")
let g:kanagawa_uniform_status_lines = get(g:, "kanagawa_uniform_status_lines", 0)
let g:kanagawa_bold_vertical_split_line = get(g:, "kanagawa_bold_vertical_split_line", 0)

if exists("g:kanagawa_comment_brightness")
    echohl None
    let g:kanagawa_comment_brightness = 10
endif

let g:kanagawa_cursor_line_number_background = get(g:, "kanagawa_cursor_line_number_background", 0)
let g:kanagawa_uniform_diff_background = get(g:, "kanagawa_uniform_diff_background", 0)

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
    let cmd = ""

    if a:guifg != ""
        let cmd = cmd . " guifg=" . a:guifg
    endif

    if a:guibg != ""
        let cmd = cmd . " guibg=" . a:guibg
    endif

    if a:ctermfg != ""
        let cmd = cmd . " ctermfg=" . a:ctermfg
    endif

    if a:ctermbg != ""
        let cmd = cmd . " ctermbg=" . a:ctermbg
    endif

    if a:attr != ""
        let cmd = cmd . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
    endif

    if a:guisp != ""
        let cmd = cmd . " guisp=" . a:guisp
    endif

    if cmd != ""
        exec "hi " . a:group . cmd
    endif
endfunction

" Ui font styles
call s:hi("Bold",      "", "", "", "", s:bold,      "")
call s:hi("Italic",    "", "", "", "", s:italic,    "")
call s:hi("Underline", "", "", "", "", s:underline, "")

" Editor
call s:hi("ColorColumn", "", s:kanagawa1_gui, "NONE", s:kanagawa1_term, "", "")
call s:hi("Cursor", s:kanagawa0_gui, s:kanagawa4_gui, "", "NONE", "", "")
call s:hi("CursorLine", "", s:kanagawa1_gui, "NONE", s:kanagawa1_term, "NONE", "")
call s:hi("Error", s:kanagawa4_gui, s:kanagawa11_gui, "", s:kanagawa11_term, "", "")
call s:hi("iCursor", s:kanagawa0_gui, s:kanagawa4_gui, "", "NONE", "", "")
call s:hi("LineNr", s:kanagawa3_gui, "NONE", s:kanagawa3_term, "NONE", "", "")
call s:hi("MatchParen", s:kanagawa8_gui, s:kanagawa3_gui, s:kanagawa8_term, s:kanagawa3_term, "", "")
call s:hi("NonText", s:kanagawa2_gui, "", s:kanagawa3_term, "", "", "")
call s:hi("Normal", s:kanagawa4_gui, s:kanagawa0_gui, "NONE", "NONE", "", "")
call s:hi("Pmenu", s:kanagawa4_gui, s:kanagawa2_gui, "NONE", s:kanagawa1_term, "NONE", "")
call s:hi("PmenuSbar", s:kanagawa4_gui, s:kanagawa2_gui, "NONE", s:kanagawa1_term, "", "")
call s:hi("PmenuSel", s:kanagawa8_gui, s:kanagawa3_gui, s:kanagawa8_term, s:kanagawa3_term, "", "")
call s:hi("PmenuThumb", s:kanagawa8_gui, s:kanagawa3_gui, "NONE", s:kanagawa3_term, "", "")
call s:hi("SpecialKey", s:kanagawa3_gui, "", s:kanagawa3_term, "", "", "")
call s:hi("SpellBad", s:kanagawa11_gui, s:kanagawa0_gui, s:kanagawa11_term, "NONE", "undercurl", s:kanagawa11_gui)
call s:hi("SpellCap", s:kanagawa13_gui, s:kanagawa0_gui, s:kanagawa13_term, "NONE", "undercurl", s:kanagawa13_gui)
call s:hi("SpellLocal", s:kanagawa5_gui, s:kanagawa0_gui, s:kanagawa5_term, "NONE", "undercurl", s:kanagawa5_gui)
call s:hi("SpellRare", s:kanagawa6_gui, s:kanagawa0_gui, s:kanagawa6_term, "NONE", "undercurl", s:kanagawa6_gui)
call s:hi("Visual", "", s:kanagawa2_gui, "", s:kanagawa1_term, "", "")
call s:hi("VisualNOS", "", s:kanagawa2_gui, "", s:kanagawa1_term, "", "")

"+- Vim 8 Terminal Colors -+
if has('terminal')
    let g:terminal_ansi_colors = [s:kanagawa1_gui, s:kanagawa11_gui,
        \ s:kanagawa14_gui, s:kanagawa13_gui, s:kanagawa9_gui,
        \ s:kanagawa15_gui, s:kanagawa8_gui, s:kanagawa5_gui,
        \ s:kanagawa3_gui, s:kanagawa11_gui, s:kanagawa14_gui,
        \ s:kanagawa13_gui, s:kanagawa9_gui, s:kanagawa15_gui,
        \ s:kanagawa7_gui, s:kanagawa6_gui]
endif

if has('nvim')
    "+- Neovim Terminal Colors -+
    let g:terminal_color_0 = s:kanagawa1_gui
    let g:terminal_color_1 = s:kanagawa11_gui
    let g:terminal_color_2 = s:kanagawa14_gui
    let g:terminal_color_3 = s:kanagawa13_gui
    let g:terminal_color_4 = s:kanagawa9_gui
    let g:terminal_color_5 = s:kanagawa15_gui
    let g:terminal_color_6 = s:kanagawa8_gui
    let g:terminal_color_7 = s:kanagawa5_gui
    let g:terminal_color_8 = s:kanagawa3_gui
    let g:terminal_color_9 = s:kanagawa11_gui
    let g:terminal_color_10 = s:kanagawa14_gui
    let g:terminal_color_11 = s:kanagawa13_gui
    let g:terminal_color_12 = s:kanagawa9_gui
    let g:terminal_color_13 = s:kanagawa15_gui
    let g:terminal_color_14 = s:kanagawa7_gui
    let g:terminal_color_15 = s:kanagawa6_gui

    "+- Neovim Support -+
    call s:hi("healthError",   s:kanagawa11_gui, s:kanagawa1_gui, s:kanagawa11_term, s:kanagawa1_term, "", "")
    call s:hi("healthSuccess", s:kanagawa14_gui, s:kanagawa1_gui, s:kanagawa14_term, s:kanagawa1_term, "", "")
    call s:hi("healthWarning", s:kanagawa13_gui, s:kanagawa1_gui, s:kanagawa13_term, s:kanagawa1_term, "", "")
    call s:hi("TermCursorNC", "", s:kanagawa1_gui, "", s:kanagawa1_term, "", "")

    "+- Neovim Diagnostics API -+
    call s:hi("DiagnosticWarn",  s:kanagawa13_gui, "", s:kanagawa13_term, "", "", "")
    call s:hi("DiagnosticError", s:kanagawa11_gui, "", s:kanagawa11_term, "", "", "")
    call s:hi("DiagnosticInfo",  s:kanagawa8_gui,  "", s:kanagawa8_term,  "", "", "")
    call s:hi("DiagnosticHint",  s:kanagawa10_gui, "", s:kanagawa10_term, "", "", "")
    call s:hi("DiagnosticUnderlineWarn",  s:kanagawa13_gui, "", s:kanagawa13_term, "", "undercurl", "")
    call s:hi("DiagnosticUnderlineError", s:kanagawa11_gui, "", s:kanagawa11_term, "", "undercurl", "")
    call s:hi("DiagnosticUnderlineInfo",  s:kanagawa8_gui,  "", s:kanagawa8_term,  "", "undercurl", "")
    call s:hi("DiagnosticUnderlineHint",  s:kanagawa10_gui  "", s:kanagawa10_term, "", "undercurl", "")

    "+- Neovim DocumentHighlight -+
    call s:hi("LspReferenceText",  "", s:kanagawa3_gui, "", s:kanagawa3_term, "", "")
    call s:hi("LspReferenceRead",  "", s:kanagawa3_gui, "", s:kanagawa3_term, "", "")
    call s:hi("LspReferenceWrite", "", s:kanagawa3_gui, "", s:kanagawa3_term, "", "")

    "+- Neovim LspSignatureHelp -+
    call s:hi("LspSignatureActiveParameter", s:kanagawa8_gui, "", s:kanagawa8_term, "", s:underline, "")
endif

"+--- Gutter ---+
call s:hi("CursorColumn", "", s:kanagawa1_gui, "NONE", s:kanagawa1_term, "", "")
if g:nord_cursor_line_number_background == 0
    call s:hi("CursorLineNr", s:kanagawa4_gui, "", "NONE", "", "NONE", "")
else
    call s:hi("CursorLineNr", s:kanagawa4_gui, s:kanagawa1_gui, "NONE", s:kanagawa1_term, "NONE", "")
endif

call s:hi("Folded",     s:kanagawa3_gui, s:kanagawa1_gui, s:kanagawa3_term, s:kanagawa1_term, s:bold, "")
call s:hi("FoldColumn", s:kanagawa3_gui, s:kanagawa0_gui, s:kanagawa3_term, "NONE", "", "")
call s:hi("SignColumn", s:kanagawa1_gui, s:kanagawa0_gui, s:kanagawa1_term, "NONE", "", "")

"+--- Navigation ---+
call s:hi("Directory", s:kanagawa8_gui, "", s:kanagawa8_term, "NONE", "", "")

"+--- Prompt/Status ---+
call s:hi("EndOfBuffer", s:kanagawa1_gui, "", s:kanagawa1_term, "NONE", "", "")
call s:hi("ErrorMsg",    s:kanagawa4_gui, s:kanagawa11_gui, "NONE", s:kanagawa11_term, "", "")
call s:hi("ModeMsg",     s:kanagawa4_gui, "", "", "", "", "")
call s:hi("MoreMsg",     s:kanagawa8_gui,  "", s:kanagawa8_term, "", "", "")
call s:hi("Question",    s:kanagawa4_gui, "", "NONE", "", "", "")

if g:kanagawa_uniform_status_lines == 0
    call s:hi("StatusLine",       s:kanagawa8_gui, s:kanagawa3_gui, s:kanagawa8_term, s:kanagawa3_term, "NONE", "")
    call s:hi("StatusLineNC",     s:kanagawa4_gui, s:kanagawa1_gui, "NONE", s:kanagawa1_term, "NONE", "")
    call s:hi("StatusLineTerm",   s:kanagawa8_gui, s:kanagawa3_gui, s:kanagawa8_term, s:kanagawa3_term, "NONE", "")
    call s:hi("StatusLineTermNC", s:kanagawa4_gui, s:kanagawa1_gui, "NONE", s:kanagawa1_term, "NONE", "")
else
    call s:hi("StatusLine",       s:kanagawa8_gui, s:kanagawa3_gui, s:kanagawa8_term, s:kanagawa3_term, "NONE", "")
    call s:hi("StatusLineNC",     s:kanagawa4_gui, s:kanagawa3_gui, "NONE", s:kanagawa3_term, "NONE", "")
    call s:hi("StatusLineTerm",   s:kanagawa8_gui, s:kanagawa3_gui, s:kanagawa8_term, s:kanagawa3_term, "NONE", "")
    call s:hi("StatusLineTermNC", s:kanagawa4_gui, s:kanagawa3_gui, "NONE", s:kanagawa3_term, "NONE", "")
endif

call s:hi("WarningMsg", s:kanagawa0_gui, s:kanagawa13_gui, s:kanagawa1_term, s:kanagawa13_term, "", "")
call s:hi("WildMenu",   s:kanagawa8_gui, s:kanagawa1_gui,  s:kanagawa8_term, s:kanagawa1_term,  "", "")

"+--- Search ---+
call s:hi("IncSearch", s:kanagawa6_gui, s:kanagawa10_gui, s:kanagawa6_term, s:kanagawa10_term, s:underline, "")
call s:hi("Search",    s:kanagawa1_gui, s:kanagawa8_gui,  s:kanagawa1_term, s:kanagawa8_term, "NONE", "")

"+--- Tabs ---+
call s:hi("TabLine",     s:kanagawa4_gui, s:kanagawa1_gui, "NONE", s:kanagawa1_term, "NONE", "")
call s:hi("TabLineFill", s:kanagawa4_gui, s:kanagawa1_gui, "NONE", s:kanagawa1_term, "NONE", "")
call s:hi("TabLineSel",  s:kanagawa8_gui, s:kanagawa3_gui, s:kanagawa8_term, s:kanagawa3_term, "NONE", "")

"+--- Window ---+
call s:hi("Title", s:kanagawa4_gui, "", "NONE", "", "NONE", "")

if g:kanagawa_bold_vertical_split_line == 0
    call s:hi("VertSplit", s:kanagawa2_gui, s:kanagawa0_gui, s:kanagawa3_term, "NONE", "NONE", "")
else
    call s:hi("VertSplit", s:kanagawa2_gui, s:kanagawa1_gui, s:kanagawa3_term, s:kanagawa1_term, "NONE", "")
endif

"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:hi("Boolean",     s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")
call s:hi("Character",   s:kanagawa14_gui, "", s:kanagawa14_term, "", "", "")
call s:hi("Comment",     s:kanagawa3_gui_bright, "", s:kanagawa3_term, "", s:italicize_comments, "")
call s:hi("Conceal",     "", "NONE", "", "NONE", "", "")
call s:hi("Conditional", s:kanagawa9_gui,  "", s:kanagawa9_term, "", "", "")
call s:hi("Constant",    s:kanagawa4_gui,  "", "NONE", "", "", "")
call s:hi("Decorator",   s:kanagawa12_gui, "", s:kanagawa12_term, "", "", "")
call s:hi("Define",      s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")
call s:hi("Delimiter",   s:kanagawa6_gui,  "", s:kanagawa6_term,  "", "", "")
call s:hi("Exception",   s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")
call s:hi("Float",       s:kanagawa15_gui, "", s:kanagawa15_term, "", "", "")
call s:hi("Function",    s:kanagawa8_gui,  "", s:kanagawa8_term,  "", "", "")
call s:hi("Identifier",  s:kanagawa4_gui,  "", "NONE", "", "NONE", "")
call s:hi("Include",  s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")
call s:hi("Keyword",  s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")
call s:hi("Label",    s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")
call s:hi("Number",   s:kanagawa15_gui, "", s:kanagawa15_term, "", "", "")
call s:hi("Operator", s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "NONE", "")
call s:hi("PreProc",  s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "NONE", "")
call s:hi("Repeat",   s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")
call s:hi("Special",  s:kanagawa4_gui,  "", "NONE", "", "", "")
call s:hi("SpecialChar",    s:kanagawa13_gui, "", s:kanagawa13_term, "", "", "")
call s:hi("SpecialComment", s:kanagawa8_gui,  "", s:kanagawa8_term, "", s:italicize_comments, "")
call s:hi("Statement",      s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")
call s:hi("StorageClass",   s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")
call s:hi("String",         s:kanagawa14_gui, "", s:kanagawa14_term, "", "", "")
call s:hi("Structure",      s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")
call s:hi("Tag",            s:kanagawa4_gui,  "", "", "", "", "")
call s:hi("Todo",           s:kanagawa3_gui,  "NONE", s:kanagawa13_term, "NONE", "", "")
call s:hi("Type",           s:kanagawa9_gui,  "", s:kanagawa9_term, "", "NONE", "")
call s:hi("Typedef",        s:kanagawa9_gui,  "", s:kanagawa9_term, "", "", "")

hi! link Annotation Decorator
hi! link Macro Define
hi! link PreCondit PreProc
hi! link Variable Identifier

"+-----------+
"+ Languages +
"+-----------+
call s:hi("asciidocAttributeEntry",   s:kanagawa10_gui, "", s:kanagawa10_term, "", "", "")
call s:hi("asciidocAttributeList",    s:kanagawa10_gui, "", s:kanagawa10_term, "", "", "")
call s:hi("asciidocAttributeRef",     s:kanagawa10_gui, "", s:kanagawa10_term, "", "", "")
call s:hi("asciidocHLabel",           s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")
call s:hi("asciidocListingBlock",     s:kanagawa7_gui,  "", s:kanagawa7_term,  "", "", "")
call s:hi("asciidocMacroAttributes",  s:kanagawa8_gui,  "", s:kanagawa8_term,  "", "", "")
call s:hi("asciidocOneLineTitle",     s:kanagawa8_gui,  "", s:kanagawa8_term,  "", "", "")
call s:hi("asciidocPassthroughBlock", s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")
call s:hi("asciidocQuotedMonospaced", s:kanagawa7_gui,  "", s:kanagawa7_term,  "", "", "")
call s:hi("asciidocTriplePlusPassthrough", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
hi! link asciidocAdmonition Keyword
hi! link asciidocAttributeRef markdownH1
hi! link asciidocBackslash Keyword
hi! link asciidocMacro Keyword
hi! link asciidocQuotedBold Bold
hi! link asciidocQuotedEmphasized Italic
hi! link asciidocQuotedMonospaced2 asciidocQuotedMonospaced
hi! link asciidocQuotedUnconstrainedBold asciidocQuotedBold
hi! link asciidocQuotedUnconstrainedEmphasized asciidocQuotedEmphasized
hi! link asciidocURL markdownLinkText

call s:hi("awkCharClass", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("awkPatterns",  s:kanagawa9_gui, "", s:kanagawa9_term, "", s:bold, "")
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

call s:hi("cIncluded", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit
hi! link cConstant Type

call s:hi("cmakeGeneratorExpression", s:kanagawa10_gui, "", s:kanagawa10_term, "", "", "")

hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

call s:hi("cssAttributeSelector", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("cssDefinition",        s:kanagawa7_gui, "", s:kanagawa7_term, "", "NONE", "")
call s:hi("cssIdentifier",        s:kanagawa7_gui, "", s:kanagawa7_term, "", s:underline, "")
call s:hi("cssStringQ",           s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

call s:hi("dosiniHeader", s:kanagawa8_gui, "", s:kanagawa8_term, "", "", "")
hi! link dosiniLabel Type

call s:hi("dtBooleanKey", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("dtExecKey",    s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("dtLocaleKey",  s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("dtNumericKey", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("dtTypeKey",    s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
hi! link dtDelim Delimiter
hi! link dtLocaleValue Keyword
hi! link dtTypeValue Keyword

if g:kanagawa_uniform_diff_background == 0
    call s:hi("DiffAdd",    s:kanagawa14_gui, s:kanagawa0_gui, s:kanagawa14_term, "NONE", "inverse", "")
    call s:hi("DiffChange", s:kanagawa13_gui, s:kanagawa0_gui, s:kanagawa13_term, "NONE", "inverse", "")
    call s:hi("DiffDelete", s:kanagawa11_gui, s:kanagawa0_gui, s:kanagawa11_term, "NONE", "inverse", "")
    call s:hi("DiffText",   s:kanagawa9_gui,  s:kanagawa0_gui, s:kanagawa9_term, "NONE", "inverse", "")
else
    call s:hi("DiffAdd",    s:kanagawa14_gui, s:kanagawa1_gui, s:kanagawa14_term, s:kanagawa1_term, "", "")
    call s:hi("DiffChange", s:kanagawa13_gui, s:kanagawa1_gui, s:kanagawa13_term, s:kanagawa1_term, "", "")
    call s:hi("DiffDelete", s:kanagawa11_gui, s:kanagawa1_gui, s:kanagawa11_term, s:kanagawa1_term, "", "")
    call s:hi("DiffText",   s:kanagawa9_gui,  s:kanagawa1_gui, s:kanagawa9_term,  s:kanagawa1_term, "", "")
endif

" Legacy groups for official git.vim and diff.vim syntax
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

call s:hi("elixirModuleDeclaration", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("elixirAlias",             s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("elixirAtom",              s:kanagawa6_gui, "", s:kanagawa6_term, "", s:bold, "")

call s:hi("gitconfigVariable", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")

call s:hi("goBuiltins", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
hi! link goConstants Keyword

" fatih/vim-go
call s:hi("gomodVersion",   s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("gomodGoVersion", s:kanagawa8_gui, "", s:kanagawa8_term, "", "", "")

call s:hi("helpBar",           s:kanagawa3_gui, "", s:kanagawa3_term, "", "", "")
call s:hi("helpHyperTextJump", s:kanagawa8_gui, "", s:kanagawa8_term, "", s:underline, "")

call s:hi("htmlArg",  s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("htmlLink", s:kanagawa4_gui, "", "", "", "NONE", "NONE")
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlH1 markdownH1
hi! link htmlH2 markdownH1
hi! link htmlH3 markdownH1
hi! link htmlH4 markdownH1
hi! link htmlH5 markdownH1
hi! link htmlH6 markdownH1
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

call s:hi("javaDocTags", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
hi! link javaCommentTitle Comment
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number

call s:hi("jsonKeyword", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")

call s:hi("lessClass", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
hi! link lessAmpersand Keyword
hi! link lessCssAttribute Delimiter
hi! link lessFunction Function
hi! link cssSelectorOp Keyword

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:hi("markdownBlockquote",    s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("markdownCode",          s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("markdownCodeDelimiter", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("markdownFootnote",      s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("markdownId",            s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("markdownIdDeclaration", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("markdownH1",       s:kanagawa8_gui, "", s:kanagawa8_term, "", "", "")
call s:hi("markdownLinkText", s:kanagawa8_gui, "", s:kanagawa8_term, "", "", "")
call s:hi("markdownUrl",      s:kanagawa4_gui, "", "NONE", "", "NONE", "")
hi! link markdownBold Bold
hi! link markdownBoldDelimiter Keyword
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownIdDelimiter Keyword
hi! link markdownItalic Italic
hi! link markdownItalicDelimiter Keyword
hi! link markdownLinkDelimiter Keyword
hi! link markdownLinkTextDelimiter Keyword
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownHeadingDelimiter Keyword

call s:hi("perlPackageDecl", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")

call s:hi("phpClasses", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("phpDocTags", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword

call s:hi("podCmdText",      s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("podVerbatimLine", s:kanagawa4_gui, "", "NONE", "", "", "")
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

call s:hi("rubyConstant", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("rubySymbol",   s:kanagawa6_gui, "", s:kanagawa6_term, "", s:bold, "")
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

call s:hi("rustAttribute", s:kanagawa10_gui, "", s:kanagawa10_term, "", "", "")
call s:hi("rustEnum",    s:kanagawa7_gui, "", s:kanagawa7_term, "", s:bold, "")
call s:hi("rustMacro",   s:kanagawa8_gui, "", s:kanagawa8_term, "", s:bold, "")
call s:hi("rustModPath", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("rustPanic",   s:kanagawa9_gui, "", s:kanagawa9_term, "", s:bold, "")
call s:hi("rustTrait",   s:kanagawa7_gui, "", s:kanagawa7_term, "", s:italic, "")
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustQuestionMark Keyword

call s:hi("sassClass", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("sassId",    s:kanagawa7_gui, "", s:kanagawa7_term, "", s:underline, "")
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

call s:hi("vimAugroup",  s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("vimMapRhs",   s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("vimNotation", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

call s:hi("xmlAttrib",     s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("xmlCdataStart", s:kanagawa3_gui_bright, "", s:kanagawa3_term, "", s:bold, "")
call s:hi("xmlNamespace",  s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

call s:hi("yamlBlockMappingKey", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword

"+----------------+
"+ Plugin Support +
"+----------------+
"+--- UI ---+
" ALE
" > w0rp/ale
call s:hi("ALEWarningSign", s:kanagawa13_gui, "", s:kanagawa13_term, "", "", "")
call s:hi("ALEErrorSign",   s:kanagawa11_gui, "", s:kanagawa11_term, "", "", "")
call s:hi("ALEWarning",     s:kanagawa13_gui, "", s:kanagawa13_term, "", "undercurl", "")
call s:hi("ALEError",       s:kanagawa11_gui, "", s:kanagawa11_term, "", "undercurl", "")

" Coc
" > neoclide/coc.vim
call s:hi("CocWarningHighlight", s:kanagawa13_gui, "", s:kanagawa13_term, "", "undercurl", "")
call s:hi("CocErrorHighlight",   s:kanagawa11_gui, "", s:kanagawa11_term, "", "undercurl", "")
call s:hi("CocWarningSign",      s:kanagawa13_gui, "", s:kanagawa13_term, "", "", "")
call s:hi("CocErrorSign",        s:kanagawa11_gui, "", s:kanagawa11_term, "", "", "")
call s:hi("CocInfoSign",         s:kanagawa8_gui,  "", s:kanagawa8_term,  "", "", "")
call s:hi("CocHintSign",         s:kanagawa10_gui, "", s:kanagawa10_term, "", "", "")

if has('nvim')
    " Neovim LSP
    " > neovim/nvim-lspconfig
    call s:hi("LspCodeLens", s:kanagawa3_gui_bright, "", s:kanagawa3_term, "", "", "")
    if has("nvim-0.5")
        call s:hi("LspDiagnosticsDefaultWarning",       s:kanagawa13_gui, "", s:kanagawa13_term, "", "", "")
        call s:hi("LspDiagnosticsDefaultError",         s:kanagawa11_gui, "", s:kanagawa11_term, "", "", "")
        call s:hi("LspDiagnosticsDefaultInformation",   s:kanagawa8_gui,  "", s:kanagawa8_term,  "", "", "")
        call s:hi("LspDiagnosticsDefaultHint",          s:kanagawa10_gui, "", s:kanagawa10_term, "", "", "")
        call s:hi("LspDiagnosticsUnderlineWarning" ,    s:kanagawa13_gui, "", s:kanagawa13_term, "", "undercurl", "")
        call s:hi("LspDiagnosticsUnderlineError",       s:kanagawa11_gui, "", s:kanagawa11_term, "", "undercurl", "")
        call s:hi("LspDiagnosticsUnderlineInformation", s:kanagawa8_gui,  "", s:kanagawa8_term,  "", "undercurl", "")
        call s:hi("LspDiagnosticsUnderlineHint",        s:kanagawa10_gui, "", s:kanagawa10_term, "", "undercurl", "")
    endif

    " Gitsigns
    " > lewis6991/gitsigns.nvim
    hi! link GitSignsCurrentLineBlame Comment
endif

" GitGutter
" > airblade/vim-gitgutter
call s:hi("GitGutterAdd",          s:kanagawa14_gui, "", s:kanagawa14_term, "", "", "")
call s:hi("GitGutterChange",       s:kanagawa13_gui, "", s:kanagawa13_term, "", "", "")
call s:hi("GitGutterChangeDelete", s:kanagawa11_gui, "", s:kanagawa11_term, "", "", "")
call s:hi("GitGutterDelete",       s:kanagawa11_gui, "", s:kanagawa11_term, "", "", "")

" Signify
" > mhinz/vim-signify
call s:hi("SignifySignAdd",          s:kanagawa14_gui, "", s:kanagawa14_term, "", "", "")
call s:hi("SignifySignChange",       s:kanagawa13_gui, "", s:kanagawa13_term, "", "", "")
call s:hi("SignifySignChangeDelete", s:kanagawa11_gui, "", s:kanagawa11_term, "", "", "")
call s:hi("SignifySignDelete",       s:kanagawa11_gui, "", s:kanagawa11_term, "", "", "")

" Sneak
" > justinmk/vim-sneak
hi! link Sneak Search

" fugitive.vim
" > tpope/vim-fugitive
call s:hi("gitcommitDiscardedFile", s:kanagawa11_gui, "", s:kanagawa11_term, "", "", "")
call s:hi("gitcommitUntrackedFile", s:kanagawa11_gui, "", s:kanagawa11_term, "", "", "")
call s:hi("gitcommitSelectedFile",  s:kanagawa14_gui, "", s:kanagawa14_term, "", "", "")

" davidhalter/jedi-vim
call s:hi("jediFunction", s:kanagawa4_gui, s:kanagawa3_gui, "", s:kanagawa3_term, "", "")
call s:hi("jediFat",      s:kanagawa8_gui, s:kanagawa3_gui, s:kanagawa8_term, s:kanagawa3_term, s:underline.s:bold, "")

" NERDTree
" > scrooloose/nerdtree
call s:hi("NERDTreeExecFile", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

" vim-clap
" > liuchengxu/vim-clap
call s:hi("ClapDir",            s:kanagawa4_gui,  "", "", "", "", "")
call s:hi("ClapDisplay",        s:kanagawa4_gui,  s:kanagawa1_gui, "", s:kanagawa1_term, "", "")
call s:hi("ClapFile",           s:kanagawa4_gui,  "", "", "NONE", "", "")
call s:hi("ClapMatches",        s:kanagawa8_gui,  "", s:kanagawa8_term,  "", "", "")
call s:hi("ClapNoMatchesFound", s:kanagawa13_gui, "", s:kanagawa13_term, "", "", "")
call s:hi("ClapSelected",       s:kanagawa7_gui,  "", s:kanagawa7_term,  "", s:bold, "")
call s:hi("ClapSelectedSign",   s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")

let s:clap_matches = [
        \ [s:kanagawa8_gui,  s:kanagawa8_term] ,
        \ [s:kanagawa9_gui,  s:kanagawa9_term] ,
        \ [s:kanagawa10_gui, s:kanagawa10_term] ,
\ ]

for s:kanagawa_clap_match_i in range(1,12)
    let clap_match_color = s:clap_matches[s:kanagawa_clap_match_i % len(s:clap_matches) - 1]
    call s:hi("ClapMatches" . s:kanagawa_clap_match_i, clap_match_color[0], "", clap_match_color[1], "", "", "")
    call s:hi("ClapFuzzyMatches" . s:kanagawa_clap_match_i, clap_match_color[0], "", clap_match_color[1], "", "", "")
endfor

unlet s:kanagawa_clap_match_i
hi! link ClapCurrentSelection PmenuSel
hi! link ClapCurrentSelectionSign ClapSelectedSign
hi! link ClapInput Pmenu
hi! link ClapPreview Pmenu
hi! link ClapProviderAbout ClapDisplay
hi! link ClapProviderColon Type
hi! link ClapProviderId Type

" vim-indent-guides
" > nathanaelkane/vim-indent-guides
call s:hi("IndentGuidesEven", "", s:kanagawa1_gui, "", s:kanagawa1_term, "", "")
call s:hi("IndentGuidesOdd", "", s:kanagawa2_gui, "", s:kanagawa3_term, "", "")

" vim-plug
" > junegunn/vim-plug
call s:hi("plugDeleted", s:kanagawa11_gui, "", "", s:kanagawa11_term, "", "")

" vim-signature
" > kshenoy/vim-signature
call s:hi("SignatureMarkText", s:kanagawa8_gui, "", s:kanagawa8_term, "", "", "")

" vim-startify
" > mhinz/vim-startify
call s:hi("StartifyFile",   s:kanagawa6_gui, "", s:kanagawa6_term, "", "", "")
call s:hi("StartifyFooter", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("StartifyHeader", s:kanagawa8_gui, "", s:kanagawa8_term, "", "", "")
call s:hi("StartifyNumber", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("StartifyPath",   s:kanagawa8_gui, "", s:kanagawa8_term, "", "", "")
hi! link StartifyBracket Delimiter
hi! link StartifySlash Normal
hi! link StartifySpecial Comment

"+--- Languages ---+
" Haskell
" > neovimhaskell/haskell-vim
call s:hi("haskellPreProc", s:kanagawa10_gui, "", s:kanagawa10_term, "", "", "")
call s:hi("haskellType",    s:kanagawa7_gui,  "", s:kanagawa7_term,  "", "", "")
hi! link haskellPragma haskellPreProc

" JavaScript
" > pangloss/vim-javascript
call s:hi("jsGlobalNodeObjects", s:kanagawa8_gui, "", s:kanagawa8_term, "", s:italic, "")
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsThis Keyword
hi! link jsNoise Delimiter
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar

" Pandoc
" > vim-pandoc/vim-pandoc-syntax
call s:hi("pandocDefinitionBlockTerm", s:kanagawa7_gui, "", s:kanagawa7_term, "", s:italic, "")
call s:hi("pandocTableDelims",         s:kanagawa3_gui, "", s:kanagawa3_term, "", "", "")
hi! link pandocAtxHeader markdownH1
hi! link pandocBlockQuote markdownBlockquote
hi! link pandocCiteAnchor Operator
hi! link pandocCiteKey pandocReferenceLabel
hi! link pandocDefinitionBlockMark Operator
hi! link pandocEmphasis markdownItalic
hi! link pandocFootnoteID pandocReferenceLabel
hi! link pandocFootnoteIDHead markdownLinkDelimiter
hi! link pandocFootnoteIDTail pandocFootnoteIDHead
hi! link pandocGridTableDelims pandocTableDelims
hi! link pandocGridTableHeader pandocTableDelims
hi! link pandocOperator Operator
hi! link pandocPipeTableDelims pandocTableDelims
hi! link pandocReferenceDefinition pandocReferenceLabel
hi! link pandocReferenceLabel markdownLinkText
hi! link pandocReferenceURL markdownUrl
hi! link pandocSimpleTableHeader pandocAtxHeader
hi! link pandocStrong markdownBold
hi! link pandocTableHeaderWord pandocAtxHeader
hi! link pandocUListItemBullet Operator

if has('nvim')
    " tree-sitter
    " > nvim-treesitter/nvim-treesitter
    hi! link TSAnnotation Annotation
    hi! link TSConstBuiltin Constant
    hi! link TSConstructor Function
    hi! link TSEmphasis Italic
    hi! link TSFuncBuiltin Function
    hi! link TSFuncMacro Function
    hi! link TSStringRegex SpecialChar
    hi! link TSStrong Bold
    hi! link TSStructure Structure
    hi! link TSTagDelimiter TSTag
    hi! link TSUnderline Underline
    hi! link TSVariable Variable
    hi! link TSVariableBuiltin Keyword
endif

" TypeScript
" > HerringtonDarkholme/yats.vim
call s:hi("typescriptBOMWindowMethod", s:kanagawa8_gui,  "", s:kanagawa8_term,  "", s:italic, "")
call s:hi("typescriptClassName",       s:kanagawa7_gui,  "", s:kanagawa7_term,  "", "", "")
call s:hi("typescriptDecorator",       s:kanagawa12_gui, "", s:kanagawa12_term, "", "", "")
call s:hi("typescriptInterfaceName",   s:kanagawa7_gui,  "", s:kanagawa7_term,  "", s:bold, "")
call s:hi("typescriptRegexpString",    s:kanagawa13_gui, "", s:kanagawa13_term, "", "", "")
" TypeScript JSX
call s:hi("tsxAttrib", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
hi! link typescriptOperator Operator
hi! link typescriptBinaryOp Operator
hi! link typescriptAssign Operator
hi! link typescriptMember Identifier
hi! link typescriptDOMStorageMethod Identifier
hi! link typescriptArrowFuncArg Identifier
hi! link typescriptGlobal typescriptClassName
hi! link typescriptBOMWindowProp Function
hi! link typescriptArrowFuncDef Function
hi! link typescriptAliasDeclaration Function
hi! link typescriptPredefinedType Type
hi! link typescriptTypeReference typescriptClassName
hi! link typescriptTypeAnnotation Structure
hi! link typescriptDocNamedParamType SpecialComment
hi! link typescriptDocNotation Keyword
hi! link typescriptDocTags Keyword
hi! link typescriptImport Keyword
hi! link typescriptExport Keyword
hi! link typescriptTry Keyword
hi! link typescriptVariable Keyword
hi! link typescriptBraces Normal
hi! link typescriptObjectLabel Normal
hi! link typescriptCall Normal
hi! link typescriptClassHeritage typescriptClassName
hi! link typescriptFuncTypeArrow Structure
hi! link typescriptMemberOptionality Structure
hi! link typescriptNodeGlobal typescriptGlobal
hi! link typescriptTypeBrackets Structure
hi! link tsxEqual Operator
hi! link tsxIntrinsicTagName htmlTag
hi! link tsxTagName tsxIntrinsicTagName

" Markdown
" > plasticboy/vim-markdown
call s:hi("mkdCode",      s:kanagawa7_gui,  "", s:kanagawa7_term,  "", "", "")
call s:hi("mkdFootnote",  s:kanagawa8_gui,  "", s:kanagawa8_term,  "", "", "")
call s:hi("mkdRule",      s:kanagawa10_gui, "", s:kanagawa10_term, "", "", "")
call s:hi("mkdLineBreak", s:kanagawa9_gui,  "", s:kanagawa9_term,  "", "", "")
hi! link mkdBold Bold
hi! link mkdItalic Italic
hi! link mkdString Keyword
hi! link mkdCodeStart mkdCode
hi! link mkdCodeEnd mkdCode
hi! link mkdBlockquote Comment
hi! link mkdListItem Keyword
hi! link mkdListItemLine Normal
hi! link mkdFootnotes mkdFootnote
hi! link mkdLink markdownLinkText
hi! link mkdURL markdownUrl
hi! link mkdInlineURL mkdURL
hi! link mkdID Identifier
hi! link mkdLinkDef mkdLink
hi! link mkdLinkDefTarget mkdURL
hi! link mkdLinkTitle mkdInlineURL
hi! link mkdDelimiter Keyword

" PHP
" > StanAngeloff/php.vim
call s:hi("phpClass", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")
call s:hi("phpClassImplements", s:kanagawa7_gui, "", s:kanagawa7_term, "", s:bold, "")
hi! link phpClassExtends phpClass
hi! link phpFunction Function
hi! link phpMethod Function
hi! link phpUseClass phpClass

" Vimwiki
" > vimwiki/vimwiki
if !exists("g:vimwiki_hl_headers") || g:vimwiki_hl_headers == 0
    for s:i in range(1,6)
        call s:hi("VimwikiHeader".s:i, s:kanagawa8_gui, "", s:kanagawa8_term, "", s:bold, "")
    endfor
else
    let s:vimwiki_hcolor_guifg = [s:kanagawa7_gui, s:kanagawa8_gui, s:kanagawa9_gui, s:kanagawa10_gui, s:kanagawa14_gui, s:kanagawa15_gui]
    let s:vimwiki_hcolor_ctermfg = [s:kanagawa7_term, s:kanagawa8_term, s:kanagawa9_term, s:kanagawa10_term, s:kanagawa14_term, s:kanagawa15_term]
    for s:i in range(1,6)
        call s:hi("VimwikiHeader".s:i, s:vimwiki_hcolor_guifg[s:i-1] , "", s:vimwiki_hcolor_ctermfg[s:i-1], "", s:bold, "")
    endfor
endif

call s:hi("VimwikiLink", s:kanagawa8_gui, "", s:kanagawa8_term, "", s:underline, "")
hi! link VimwikiHeaderChar markdownHeadingDelimiter
hi! link VimwikiHR Keyword
hi! link VimwikiList markdownListMarker

" YAML
" > stephpy/vim-yaml
call s:hi("yamlKey", s:kanagawa7_gui, "", s:kanagawa7_term, "", "", "")

"+------------+
"+ Public API +
"+------------+
"+--- Functions ---+
function! KanagawaPalette() abort
    let ret = {}

    for color in range(16)
        execute 'let ret["kanagawa'.color.'"] = s:kanagawa'.color.'_gui'
    endfor

    let ret["kanagawa3_bright"] = s:kanagawa3_gui_bright
    return ret
endfunction
