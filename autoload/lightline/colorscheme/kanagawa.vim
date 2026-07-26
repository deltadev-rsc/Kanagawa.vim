let s:kanagawa_vim_version = "0.0.1"
let s:p = {
    \ 'normal': {},
    \ 'inactive': {},
    \ 'insert': {},
    \ 'replace': {},
    \ 'visual': {},
    \ 'tabline': {}
\ }

let s:kanagawa0 = ["#1f1f28", "NONE"]
let s:kanagawa1 = ["#2a2a37", 0]
let s:kanagawa2 = ["#363646", "NONE"]
let s:kanagawa3 = ["#48485a", 8]
let s:kanagawa4 = ["#dcd7ba", "NONE"]
let s:kanagawa5 = ["#e6e2c8", 7]
let s:kanagawa6 = ["#eff1f5", 15]
let s:kanagawa7 = ["#72948d", 14]
let s:kanagawa8 = ["#7e9cd8", 6]
let s:kanagawa9 = ["#8daadc", 4]
let s:kanagawa10 = ["#5e81ac", 12]
let s:kanagawa11 = ["#c34043", 1]
let s:kanagawa12 = ["#cda45e", 11]
let s:kanagawa13 = ["#e6c384", 3]
let s:kanagawa14 = ["#76946a", 2]
let s:kanagawa15 = ["#957fb8", 5]

let s:p.normal.left =    [ [s:kanagawa1, s:kanagawa8], [s:kanagawa5, s:kanagawa1] ]
let s:p.normal.middle =  [ [s:kanagawa5, s:kanagawa3] ]
let s:p.normal.right =   [ [s:kanagawa5, s:kanagawa1], [s:kanagawa5, s:kanagawa1] ]
let s:p.normal.warning = [ [s:kanagawa1, s:kanagawa13] ]
let s:p.normal.error =   [ [s:kanagawa1, s:kanagawa11] ]

let s:p.inactive.left =  [ [s:kanagawa1, s:kanagawa8], [s:kanagawa5, s:kanagawa1] ]
let s:p.inactive.middle = g:nord_uniform_status_lines == 0 ? [ [s:kanagawa5, s:kanagawa1] ] : [ [s:kanagawa5, s:kanagawa3] ]
let s:p.inactive.right = [ [s:kanagawa5, s:kanagawa1], [s:kanagawa5, s:kanagawa1] ]

let s:p.insert.left =  [ [s:kanagawa1, s:kanagawa6],  [s:kanagawa5, s:kanagawa] ]
let s:p.replace.left = [ [s:kanagawa1, s:kanagawa13], [s:kanagawa5, s:kanagawa1] ]
let s:p.visual.left =  [ [s:kanagawa1, s:kanagawa7],  [s:kanagawa5, s:kanagawa1] ]

let s:p.tabline.left =   [ [s:kanagawa5, s:kanagawa3] ]
let s:p.tabline.middle = [ [s:kanagawa5, s:kanagawa3] ]
let s:p.tabline.right =  [ [s:kanagawa5, s:kanagawa3] ]
let s:p.tabline.tabsel = [ [s:kanagawa1, s:kanagawa8] ]
