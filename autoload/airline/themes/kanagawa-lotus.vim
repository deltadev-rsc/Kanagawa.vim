let g:airline#themes#kanagawa_lotus#palette = {}

" --- Kanagawa Lotus Palette ---
let s:kanagawa0_gui  = "#48485a" " Darkest (used for errors in light mode)
let s:kanagawa1_gui  = "#eff1f5" " Main light background
let s:kanagawa2_gui  = "#e6e2c8" " Slightly darker background
let s:kanagawa3_gui  = "#dcd7ba" " Highlight background
let s:kanagawa4_gui  = "#48485a" " Main foreground (dark)
let s:kanagawa5_gui  = "#363646" " Darker foreground
let s:kanagawa6_gui  = "#1f1f28" " Darkest foreground
let s:kanagawa7_gui  = "#5e81ac" " Adjusted for light

let s:NMain   = [s:kanagawa1_gui, s:kanagawa8_gui,  s:kanagawa1_term, s:kanagawa8_term]
let s:NRight  = [s:kanagawa1_gui, s:kanagawa9_gui,  s:kanagawa1_term, s:kanagawa9_term]
let s:NMiddle = [s:kanagawa5_gui, s:kanagawa3_gui,  s:kanagawa5_term, s:kanagawa3_term]
let s:NWarn   = [s:kanagawa1_gui, s:kanagawa13_gui, s:kanagawa3_term, s:kanagawa13_term]
let s:NError  = [s:kanagawa0_gui, s:kanagawa11_gui, s:kanagawa1_term, s:kanagawa11_term]
let g:airline#themes#kanagawa#palette.normal = airline#themes#generate_color_map(s:NMain, s:NRight, s:NMiddle)
let g:airline#themes#kanagawa#palette.normal.airline_warning = s:NWarn
let g:airline#themes#kanagawa#palette.normal.airline_error = s:NError

let s:IMain   = [s:kanagawa1_gui, s:kanagawa14_gui, s:kanagawa1_term, s:kanagawa6_term]
let s:IRight  = [s:kanagawa1_gui, s:kanagawa9_gui,  s:kanagawa1_term, s:kanagawa9_term]
let s:IMiddle = [s:kanagawa5_gui, s:kanagawa3_gui,  s:kanagawa5_term, s:kanagawa3_term]
let s:IWarn   = [s:kanagawa1_gui, s:kanagawa13_gui, s:kanagawa3_term, s:kanagawa13_term]
let s:IError  = [s:kanagawa0_gui, s:kanagawa11_gui, s:kanagawa1_term, s:kanagawa11_term]
let g:airline#themes#kanagawa#palette.insert = airline#themes#generate_color_map(s:IMain, s:IRight, s:IMiddle)
let g:airline#themes#kanagawa#palette.insert.airline_warning = s:IWarn
let g:airline#themes#kanagawa#palette.insert.airline_error = s:IError

let s:RMain   = [s:kanagawa1_gui, s:kanagawa14_gui, s:kanagawa1_term, s:kanagawa14_term]
let s:RRight  = [s:kanagawa1_gui, s:kanagawa9_gui,  s:kanagawa1_term, s:kanagawa9_term]
let s:RMiddle = [s:kanagawa5_gui, s:kanagawa3_gui,  s:kanagawa5_term, s:kanagawa3_term]
let s:RWarn   = [s:kanagawa1_gui, s:kanagawa13_gui, s:kanagawa3_term, s:kanagawa13_term]
let s:RError  = [s:kanagawa0_gui, s:kanagawa11_gui, s:kanagawa1_term, s:kanagawa11_term]
let g:airline#themes#kanagawa#palette.replace = airline#themes#generate_color_map(s:RMain, s:RRight, s:RMiddle)
let g:airline#themes#kanagawa#palette.replace.airline_warning = s:RWarn
let g:airline#themes#kanagawa#palette.replace.airline_error = s:RError

let s:VMain   = [s:kanagawa1_gui, s:kanagawa7_gui,  s:kanagawa1_term, s:kanagawa7_term]
let s:VRight  = [s:kanagawa1_gui, s:kanagawa9_gui,  s:kanagawa1_term, s:kanagawa9_term]
let s:VMiddle = [s:kanagawa5_gui, s:kanagawa3_gui,  s:kanagawa5_term, s:kanagawa3_term]
let s:VWarn   = [s:kanagawa1_gui, s:kanagawa13_gui, s:kanagawa3_term, s:kanagawa13_term]
let s:VError  = [s:kanagawa0_gui, s:kanagawa11_gui, s:kanagawa1_term, s:kanagawa11_term]
let g:airline#themes#kanagawa#palette.visual = airline#themes#generate_color_map(s:VMain, s:VRight, s:VMiddle)
let g:airline#themes#kanagawa#palette.visual.airline_warning = s:VWarn
let g:airline#themes#kanagawa#palette.visual.airline_error = s:VError

let s:IAMain  = [s:kanagawa5_gui, s:kanagawa3_gui, s:kanagawa5_term, s:kanagawa3_term]
let s:IARight = [s:kanagawa5_gui, s:kanagawa3_gui, s:kanagawa5_term, s:kanagawa3_term]

if g:kanagawa_uniform_status_lines == 0
    let s:IAMiddle = [s:kanagawa5_gui, s:kanagawa1_gui, s:kanagawa5_term, s:kanagawa1_term]
else
    let s:IAMiddle = [s:kanagawa5_gui, s:kanagawa3_gui, s:kanagawa5_term, s:kanagawa3_term]
endif

let s:IAWarn  = [s:kanagawa1_gui, s:kanagawa13_gui, s:kanagawa3_term, s:kanagawa13_term]
let s:IAError = [s:kanagawa0_gui, s:kanagawa11_gui, s:kanagawa1_term, s:kanagawa11_term]
let g:airline#themes#kanagawa#palette.inactive = airline#themes#generate_color_map(s:IAMain, s:IARight, s:IAMiddle)
let g:airline#themes#kanagawa#palette.inactive.airline_warning = s:IAWarn
let g:airline#themes#kanagawa#palette.inactive.airline_error = s:IAError

let g:airline#themes#kanagawa#palette.normal.airline_term = s:NMiddle
let g:airline#themes#kanagawa#palette.insert.airline_term = s:IMiddle
let g:airline#themes#kanagawa#palette.replace.airline_term = s:RMiddle
let g:airline#themes#kanagawa#palette.visual.airline_term = s:VMiddle
let g:airline#themes#kanagawa#palette.inactive.airline_term = s:IAMiddle
