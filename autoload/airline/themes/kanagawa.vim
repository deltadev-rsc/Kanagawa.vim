let g:airline#themes#kanagawa#palette = {}

let s:kanagawa0_gui = "#1f1f28"
let s:kanagawa1_gui = "#2a2a37"
let s:kanagawa2_gui = "#363646"
let s:kanagawa3_gui = "#48485a"
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

let s:kanagawa0_term = "NONE"
let s:kanagawa1_term = "0"
let s:kanagawa2_term = "NONE"
let s:kanagawa4_term = "NONE"
let s:kanagawa11_term = "1"
let s:kanagawa14_term = "2"
let s:kanagawa13_term = "3"
let s:kanagawa9_term = "4"
let s:kanagawa15_term = "5"
let s:kanagawa8_term = "6"
let s:kanagawa5_term = "7"
let s:kanagawa3_term = "8"
let s:kanagawa12_term = "11"
let s:kanagawa10_term = "12"
let s:kanagawa7_term = "14"
let s:kanagawa6_term = "15"

let s:NMain = [s:kanagawa1_gui, s:kanagawa8_gui, s:kanagawa1_term, s:kanagawa8_term]
let s:NRight = [s:kanagawa1_gui, s:kanagawa9_gui, s:kanagawa1_term, s:kanagawa9_term]
let s:NMiddle = [s:kanagawa5_gui, s:kanagawa3_gui, s:kanagawa5_term, s:kanagawa3_term]
let s:NWarn = [s:kanagawa1_gui, s:kanagawa13_gui, s:kanagawa3_term, s:kanagawa13_term]
let s:NError = [s:kanagawa0_gui, s:kanagawa11_gui, s:kanagawa1_term, s:kanagawa11_term]
let g:airline#themes#kanagawa#palette.normal = airline#themes#generate_color_map(s:NMain, s:NRight, s:NMiddle)
let g:airline#themes#kanagawa#palette.normal.airline_warning = s:NWarn
let g:airline#themes#kanagawa#palette.normal.airline_error = s:NError

let s:IMain = [s:kanagawa1_gui, s:kanagawa14_gui, s:kanagawa1_term, s:kanagawa6_term]
let s:IRight = [s:kanagawa1_gui, s:kanagawa9_gui, s:kanagawa1_term, s:kanagawa9_term]
let s:IMiddle = [s:kanagawa5_gui, s:kanagawa3_gui, s:kanagawa5_term, s:kanagawa3_term]
let s:IWarn = [s:kanagawa1_gui, s:kanagawa13_gui, s:kanagawa3_term, s:kanagawa13_term]
let s:IError = [s:kanagawa0_gui, s:kanagawa11_gui, s:kanagawa1_term, s:kanagawa11_term]
let g:airline#themes#kanagawa#palette.insert = airline#themes#generate_color_map(s:IMain, s:IRight, s:IMiddle)
let g:airline#themes#kanagawa#palette.insert.airline_warning = s:IWarn
let g:airline#themes#kanagawa#palette.insert.airline_error = s:IError

let s:RMain = [s:kanagawa1_gui, s:kanagawa14_gui, s:kanagawa1_term, s:kanagawa14_term]
let s:RRight = [s:kanagawa1_gui, s:kanagawa9_gui, s:kanagawa1_term, s:kanagawa9_term]
let s:RMiddle = [s:kanagawa5_gui, s:kanagawa3_gui, s:kanagawa5_term, s:kanagawa3_term]
let s:RWarn = [s:kanagawa1_gui, s:kanagawa13_gui, s:kanagawa3_term, s:kanagawa13_term]
let s:RError = [s:kanagawa0_gui, s:kanagawa11_gui, s:kanagawa1_term, s:kanagawa11_term]
let g:airline#themes#kanagawa#palette.replace = airline#themes#generate_color_map(s:RMain, s:RRight, s:RMiddle)
let g:airline#themes#kanagawa#palette.replace.airline_warning = s:RWarn
let g:airline#themes#kanagawa#palette.replace.airline_error = s:RError

let s:VMain = [s:kanagawa1_gui, s:kanagawa7_gui, s:kanagawa1_term, s:kanagawa7_term]
let s:VRight = [s:kanagawa1_gui, s:kanagawa9_gui, s:kanagawa1_term, s:kanagawa9_term]
let s:VMiddle = [s:kanagawa5_gui, s:kanagawa3_gui, s:kanagawa5_term, s:kanagawa3_term]
let s:VWarn = [s:kanagawa1_gui, s:kanagawa13_gui, s:kanagawa3_term, s:kanagawa13_term]
let s:VError = [s:kanagawa0_gui, s:kanagawa11_gui, s:kanagawa1_term, s:kanagawa11_term]
let g:airline#themes#kanagawa#palette.visual = airline#themes#generate_color_map(s:VMain, s:VRight, s:VMiddle)
let g:airline#themes#kanagawa#palette.visual.airline_warning = s:VWarn
let g:airline#themes#kanagawa#palette.visual.airline_error = s:VError

let s:IAMain = [s:kanagawa5_gui, s:kanagawa3_gui, s:kanagawa5_term, s:kanagawa3_term]
let s:IARight = [s:kanagawa5_gui, s:kanagawa3_gui, s:kanagawa5_term, s:kanagawa3_term]
if g:kanagawa_uniform_status_lines == 0
  let s:IAMiddle = [s:kanagawa5_gui, s:kanagawa1_gui, s:kanagawa5_term, s:kanagawa1_term]
else
  let s:IAMiddle = [s:kanagawa5_gui, s:kanagawa3_gui, s:kanagawa5_term, s:kanagawa3_term]
endif
let s:IAWarn = [s:kanagawa1_gui, s:kanagawa13_gui, s:kanagawa3_term, s:kanagawa13_term]
let s:IAError = [s:kanagawa0_gui, s:kanagawa11_gui, s:kanagawa1_term, s:kanagawa11_term]
let g:airline#themes#kanagawa#palette.inactive = airline#themes#generate_color_map(s:IAMain, s:IARight, s:IAMiddle)
let g:airline#themes#kanagawa#palette.inactive.airline_warning = s:IAWarn
let g:airline#themes#kanagawa#palette.inactive.airline_error = s:IAError

let g:airline#themes#kanagawa#palette.normal.airline_term = s:NMiddle
let g:airline#themes#kanagawa#palette.insert.airline_term = s:IMiddle
let g:airline#themes#kanagawa#palette.replace.airline_term = s:RMiddle
let g:airline#themes#kanagawa#palette.visual.airline_term = s:VMiddle
let g:airline#themes#kanagawa#palette.inactive.airline_term = s:IAMiddle
