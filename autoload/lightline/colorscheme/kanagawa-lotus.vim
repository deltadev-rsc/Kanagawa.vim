let s:kanagawa_vim_version = "0.0.1"
let s:p = {
    \ 'normal': {},
    \ 'inactive': {},
    \ 'insert': {},
    \ 'replace': {},
    \ 'visual': {},
    \ 'tabline': {}
\ }

" --- Kanagawa Lotus Palette ---
let s:kanagawa0 = ["#48485a", "NONE"] " Dark accent for errors
let s:kanagawa1 = ["#eff1f5", 0]      " Lightest background
let s:kanagawa2 = ["#e6e2c8", "NONE"] " Slightly darker bg
let s:kanagawa3 = ["#dcd7ba", 8]      " Muted highlight bg
let s:kanagawa4 = ["#48485a", "NONE"] " Main text (dark)
let s:kanagawa5 = ["#363646", 7]      " Dark text
let s:kanagawa6 = ["#1f1f28", 15]     " Darkest text
let s:kanagawa7 = ["#5e81ac", 14]     " Adjusted accent
let s:kanagawa8 = ["#5e81ac", 6]      " Adjusted accent
let s:kanagawa9 = ["#7e9cd8", 4]
let s:kanagawa10 = ["#4c669f", 12]
let s:kanagawa11 = ["#c34043", 1]
let s:kanagawa12 = ["#cda45e", 11]
let s:kanagawa13 = ["#d6a65e", 3]
let s:kanagawa14 = ["#5f7d60", 2]
let s:kanagawa15 = ["#7a67a3", 5]

let s:p.normal.left =    [ [s:kanagawa1, s:kanagawa8], [s:kanagawa5, s:kanagawa1] ]
let s:p.normal.middle =  [ [s:kanagawa5, s:kanagawa3] ]
let s:p.normal.right =   [ [s:kanagawa5, s:kanagawa1], [s:kanagawa5, s:kanagawa1] ]
let s:p.normal.warning = [ [s:kanagawa1, s:kanagawa13] ]
let s:p.normal.error =   [ [s:kanagawa1, s:kanagawa11] ]

let s:p.inactive.left =  [ [s:kanagawa1, s:kanagawa8], [s:kanagawa5, s:kanagawa1] ]
let s:p.inactive.middle = g:nord_uniform_status_lines == 0 ? [ [s:kanagawa5, s:kanagawa1] ] : [ [s:kanagawa5, s:kanagawa3] ]
let s:p.inactive.right = [ [s:kanagawa5, s:kanagawa1], [s:kanagawa5, s:kanagawa1] ]

let s:p.insert.left =  [ [s:kanagawa1, s:kanagawa6],  [s:kanagawa5, s:kanagawa1] ]
let s:p.replace.left = [ [s:kanagawa1, s:kanagawa13], [s:kanagawa5, s:kanagawa1] ]
let s:p.visual.left =  [ [s:kanagawa1, s:kanagawa7],  [s:kanagawa5, s:kanagawa1] ]

let s:p.tabline.left =   [ [s:kanagawa5, s:kanagawa3] ]
let s:p.tabline.middle = [ [s:kanagawa5, s:kanagawa3] ]
let s:p.tabline.right =  [ [s:kanagawa5, s:kanagawa3] ]
let s:p.tabline.tabsel = [ [s:kanagawa1, s:kanagawa8] ]

let g:lightline#colorscheme#kanagawa_lotus#palette = lightline#colorscheme#flatten(s:p)
