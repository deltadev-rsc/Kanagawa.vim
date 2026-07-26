" =============================================================
" | Kanagawa Vim theme by deltadev-rsc.                       |
" | like https://github.com/menisadi/kanagawa.vim, but better |
" | And with airline/lightline theme support                  |
" =============================================================

import "colors.vim"

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name = "kanagawa"
let s:kanagawa_vim_verison = "0.0.1"
set background=dark

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
        let cmd = cmd . " gui=" . a:attr . " cterm=" . substitute(a:atrr, "undercurl", s:underline, "")
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
