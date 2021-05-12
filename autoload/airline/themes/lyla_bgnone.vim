" _g: gui, _c: cterm
let s:light_g = '#e6ede3'
let s:light_c = 255
let s:med_hi_g = '#5d677a'
let s:med_hi_c = 243
let s:med_lo_g = '#313640'
let s:med_lo_c = 238
let s:dark_g = '#21252b'
let s:dark_c = 236

let s:green_g = '#84bf3d'
let s:green_c = 114
let s:blue_g = '#36a0c1'
let s:blue_c = 75
let s:yellow_g = '#bbff91'
let s:yellow_c = 180
let s:red_g = '#e06c75'
let s:red_c = 168

let s:azure_l  = '#D7DBDB'
let s:azure_n  = '#BCC3C3'
let s:azure_d  = '#A1AAAA'
let s:azure_dd = '#3C4343'
let s:warm_d   = '#FF7C4D'
let s:warm_n   = '#FFA280'
let s:warm_l   = '#FFC7D3'


let s:bg = "#242828"
let s:fg = "#838D96"
"let s:fg = "#a4a4a4"
let s:sky1 = "#bd8840"
let s:sky2 = "#d06e3e"
let s:sky3 = "#e9a05a"
let s:fth1 = "#87bba5"
let s:fth2 = "#737fc4"
let s:blue = "#e9a05a"
let s:grey = "#6A6868"

let s:none     = "NONE"
let s:cursor_line = "#313640"
let s:warning  = "#FF3030"
let s:yellow   = "#FFD700"


let g:airline#themes#lyla_bgnone#palette = {}

function! s:my_generate_color_map(sect1, sect2, sect3)
  let palette = airline#themes#generate_color_map(a:sect1, a:sect2, a:sect3)
  call extend(palette, { 'airline_a_to_airline_b': [s:warning, s:grey, '', '', 'NONE' ] })
  call extend(palette, { 'airline_b_to_airline_c': ['NONE', 'NONE', '', '', 'NONE' ] })
  call extend(palette, { 'airline_c_to_airline_x': ['NONE', 'NONE', '', '', 'NONE' ] })
  call extend(palette, { 'airline_x_to_airline_y': ['NONE', 'NONE', '', '', 'NONE' ] })
  call extend(palette, { 'airline_y_to_airline_z': ['NONE', 'NONE', '', '', 'NONE' ] })
  return palette
endfunction


" Normal mode
" Array format: [guifg, guibg, ctermfg, ctermbg, opts]
let s:normal_outer = [s:fth1, s:none, s:dark_c, s:green_c]
let s:normal_middle = [s:grey, s:none, s:light_c, s:med_hi_c]
let s:normal_inner = [s:grey, s:none, s:green_c, s:med_lo_c]
let s:normal_inner_modified = [s:fg, s:none, s:yellow_c, s:med_lo_c]
let g:airline#themes#lyla_bgnone#palette.normal =
    \ s:my_generate_color_map(s:normal_outer, s:normal_middle, s:normal_inner)
let g:airline#themes#lyla_bgnone#palette.normal_modified =
    \ s:my_generate_color_map(s:normal_outer, s:normal_middle, s:normal_inner_modified)


" Insert mode
let s:insert_outer = [s:sky1, s:none, s:med_lo_c, s:blue_c]
let s:insert_middle = s:normal_middle
let s:insert_inner = [s:grey, s:none, s:blue_c, s:med_lo_c]
let g:airline#themes#lyla_bgnone#palette.insert =
    \ airline#themes#generate_color_map(s:insert_outer, s:insert_middle, s:insert_inner)
let g:airline#themes#lyla_bgnone#palette.insert_modified =
    \ copy(g:airline#themes#lyla_bgnone#palette.normal_modified)


" Replace mode
let s:replace_outer = [s:fg, s:bg, s:med_lo_c, s:red_c]
let s:replace_middle = s:normal_middle
let s:replace_inner = [s:bg, s:fg, s:red_c, s:med_lo_c]
let g:airline#themes#lyla_bgnone#palette.replace =
    \ airline#themes#generate_color_map(s:replace_outer, s:replace_middle, s:replace_inner)
let g:airline#themes#lyla_bgnone#palette.replace_modified =
    \ copy(g:airline#themes#lyla_bgnone#palette.insert_modified)


" Visual mode
let s:visual_outer = [s:sky2, s:none, s:dark_c, s:yellow_c]
let s:visual_middle = s:normal_middle
let s:visual_inner = [s:grey, s:none, s:yellow_c, s:med_lo_c]
let g:airline#themes#lyla_bgnone#palette.visual =
    \ airline#themes#generate_color_map(s:visual_outer, s:visual_middle, s:visual_inner)
let g:airline#themes#lyla_bgnone#palette.visual_modified =
    \ copy(g:airline#themes#lyla_bgnone#palette.insert_modified)


" Inactive window
let s:inactive = [s:grey, s:none, s:light_c, s:med_lo_c]
let s:inactive_modified = [s:grey, '', s:yellow_c, '']
let g:airline#themes#lyla_bgnone#palette.inactive =
    \ airline#themes#generate_color_map(s:inactive, s:inactive, s:inactive)
let g:airline#themes#lyla_bgnone#palette.inactive_modified =
    \ airline#themes#generate_color_map(s:inactive, s:inactive, s:inactive_modified)

