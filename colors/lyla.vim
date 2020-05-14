set background=dark
syntax reset

let g:colors_name='lyla'
let colors_name='lyla'

let s:bg = "#242828"
let s:fg = "#6F8EB3"
"let s:fg = "#a4a4a4"
let s:sky1 = "#bd8840"
let s:sky2 = "#d06e3e"
let s:sky3 = "#e9a05a"
let s:fth1 = "#87bba5"
let s:fth2 = "#737fc4"
let s:blue = "#e9a05a"

let s:grey = "#6A6868"

let s:pmenu = '#101010'

let s:none     = "NONE"
let s:cursor_line = "#313640"
let s:warning  = "#FF3030"
let s:yellow   = s:fth1

function! s:h(group, fg, bg, attr)
  if a:attr != ""
    exec "hi " . a:group . " guifg=" . a:fg . " guibg=" . a:bg . " gui=" . a:attr
  else
    exec "hi " . a:group . " guifg=" . a:fg . " guibg=" . a:bg . " gui=" . s:none
  endif
endfun

call s:h("Normal" , s:fg , s:bg , "")
call s:h("NonText" , s:fg , s:none , "")

call s:h("Cursor" , s:bg , s:fg ,"")
call s:h("CursorColumn" , s:none , s:cursor_line , "")
call s:h("CursorLine" , s:none , s:cursor_line , "")

call s:h("LineNr" , s:grey , s:bg , "")
call s:h("CursorLineNr" , s:fth1 , s:bg , "")

call s:h("VertSplit", s:grey, s:bg, "")

"call s:h("DiffAdd",)
"call s:h("DiffChange", )
"call s:h("DiffDelete", s:warning , s:none , "")
"call s:h("DiffText", )
"call s:h("IncSearch", s:bg, s:yellow, "")
call s:h("Search", s:bg, s:yellow, "")

call s:h("ErrorMsg", s:warning, s:none, "")
call s:h("ModeMsg", s:warning, s:none, "")
call s:h("MoreMsg", s:warning, s:none, "")
call s:h("WarningMsg", s:warning, s:none, "")
call s:h("Question", s:warning, s:none, "")
"
call s:h("Pmenu", s:fg, s:pmenu, "")
call s:h("PmenuSel", s:bg, s:fth1, "")
call s:h("PmenuSbar", s:none, s:pmenu, "")
call s:h("PmenuThumb", s:none, s:pmenu, "")

call s:h("Directory", s:sky2, s:bg, "")
"
call s:h("SpellBad", s:warning, s:none, "")
call s:h("SpellCap", s:yellow, s:none, "")
call s:h("SpellLocal", s:yellow, s:none, "")
call s:h("SpellRare", s:yellow, s:none, "")

"
"call s:h("StatusLine", s:warm_d, s:azure_dd, "")
"call s:h("StatusLineNC", s:azure_dd, s:azure_dd, "")
"call s:h("TabLine", s:comment_fg, s:cursor_line, "")
"call s:h("TabLineFill", s:comment_fg, s:cursor_line, "")
"call s:h("TabLineSel", s:fg, s:bg, "")
"
"call s:h("Visual", "", s:selection, "")
"call s:h("VisualNOS", "", s:selection, "")
"
"call s:h("ColorColumn", "", s:color_col, "")
"call s:h("Conceal", s:fg, "", "")
"call s:h("Directory", s:blue, "", "")
"call s:h("VertSplit", s:vertsplit, s:vertsplit, "")
"call s:h("Folded", s:fg, "", "")
"call s:h("FoldColumn", s:fg, "", "")
call s:h("SignColumn", s:warning , s:bg, "")
"
call s:h("MatchParen", s:yellow, s:none, "underline")
"call s:h("SpecialKey", s:fg, "", "")
call s:h("Title", s:sky1, "", "")
"call s:h("WildMenu", s:fg, "", "")
"

call s:h("Comment" , s:grey , s:none , "")
call s:h("Constant" , s:sky1 , s:none , "")

" literal
call s:h("String" , s:sky2 , s:none , "")
call s:h("Character" , s:sky2 , s:none , "")
call s:h("Number" , s:sky2 , s:none , "")
call s:h("Boolean" , s:sky2 , s:none , "")
call s:h("Float" , s:sky2 , s:none , "")


call s:h("Identifier" , s:sky1 , s:none , "")
call s:h("Function" , s:sky1 , s:none , "")

call s:h("Statement" , s:fth2 , s:none , "")
call s:h("Conditional" , s:sky2 , s:none , "")
call s:h("Repeat" , s:sky2 , s:none , "")
call s:h("Label" , s:sky2 , s:none , "")
call s:h("Operator" , s:fg , s:none , "")
call s:h("Keyword" , s:sky2 , s:none , "")
call s:h("Exception" , s:sky2 , s:none , "")

call s:h("PreProc" , s:fth2 , s:none , "")
call s:h("Include" , s:sky2 , s:none , "")
call s:h("Define" , s:fth2 , s:none , "")
call s:h("Macro" , s:fth2 , s:none , "")
call s:h("PreCondit" , s:fth2 , s:none , "")

call s:h("Type" , s:sky1 , s:none , "")
call s:h("StorageClass" , s:sky2 , s:none , "")
call s:h("Structure" , s:sky2 , s:none , "")
call s:h("Typedef" , s:sky1 , s:none , "")
call s:h("Special" , s:sky1 , s:none , "")
call s:h("SpecialChar" , s:sky1 , s:none , "")
call s:h("Tag" , s:sky1 , s:none , "")
call s:h("Delimiter" , s:sky1 , s:none , "")
call s:h("SpecialComment" , s:sky1 , s:none , "")
call s:h("Debug" , s:sky2 , s:none , "")
call s:h("Underlined" , s:sky2 , s:none , "")
call s:h("Ignore" , s:sky2 , s:none , "")
call s:h("Error" , s:warning , s:none , "")
call s:h("Todo" , s:sky2 , s:none , "")
call s:h("LspCxxHlGroupNamespace" , s:sky1 , s:none , "")
call s:h("LspCxxHlGroupMemberVariable" , s:fg , s:none , "")

" Git {
"call s:h("gitcommitComment", s:azure_dd, "", "")
"call s:h("gitcommitUnmerged", s:warm_d, "", "")
"call s:h("gitcommitOnBranch", s:fg, "", "")
"call s:h("gitcommitBranch", s:azure_l, "", "")
"call s:h("gitcommitDiscardedType", s:warm_d, "", "")
"call s:h("gitcommitSelectedType", s:fg, "", "")
"call s:h("gitcommitHeader", s:fg, "", "")
"call s:h("gitcommitUntrackedFile", s:azure_d, "", "")
"call s:h("gitcommitDiscardedFile", s:warm_d, "", "")
"call s:h("gitcommitSelectedFile", s:fg, "", "")
"call s:h("gitcommitUnmergedFile", s:warm_d, "", "")
"call s:h("gitcommitFile", s:fg, "", "")
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile

let g:terminal_color_0 = "#1d262f"
let g:terminal_color_1 = s:sky2
let g:terminal_color_2 = s:fth1
let g:terminal_color_3 = s:sky1
let g:terminal_color_4 = s:fth2
let g:terminal_color_5 = s:blue
let g:terminal_color_6 = s:sky1
let g:terminal_color_7 = s:fg
let g:terminal_color_8 = "#1d262f"
let g:terminal_color_9 = s:sky2
let g:terminal_color_10 = s:fth1
let g:terminal_color_11 = s:sky1
let g:terminal_color_12 = s:fth2
let g:terminal_color_13 = s:blue
let g:terminal_color_14 = s:sky1
let g:terminal_color_15 = s:fg
let g:terminal_color_background = s:bg
let g:terminal_color_foreground = s:fg
