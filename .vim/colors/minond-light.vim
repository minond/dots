hi clear
let colors_name = "minond-light"
set background=light

if exists("syntax_on")
	syntax reset
endif

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

" light colors
let s:NormalColor = 0 " Black
let s:BackgroudColor = 230 " 255 " White
let s:CommentColor = 103 " 245 " Gray
let s:LightTextColor = 7
let s:LineNumberBgColor = 228 " Gray
let s:StandoutColor = 202 " 21
let s:SpecialStandoutColor = 92 " 73 " 19 " DarkBlue
let s:HightlightTextColor = 0 " 1 " Red
let s:HighlightColor = 193 " 220 " Yellow
let s:ConstantValueColor = 196 " 160 " 12

" dark colors
" let s:NormalColor = 252 " Black
" let s:BackgroudColor = 234 " White
" let s:CommentColor = 59 " Gray
" let s:LightTextColor = 7
" let s:LineNumberBgColor = 228 " Gray
" let s:StandoutColor = 161
" let s:SpecialStandoutColor = 19 " DarkBlue
" let s:HightlightTextColor = 0 " Red
" let s:HighlightColor = 220 " Yellow
" let s:ConstantValueColor = 135 " 12

""""""""""""""""""""""" language links

hi link phpType Type
hi link phpStorageClass phpStatement
hi link phpSpecialFunction SpecialFunction
hi link phpBackslashSequences SpecialCharacter
hi link cSpecialCharacter SpecialCharacter
hi link cFormat SpecialCharacter

""""""""""""""""""""""" standard

exe "hi Normal                           ctermfg=" . s:NormalColor               . " ctermbg=" . s:BackgroudColor
exe "hi Normal                             guifg=" . s:NormalColor               . "   guibg=" . s:BackgroudColor
exe "hi None                             ctermfg=" . s:ConstantValueColor
exe "hi None                               guifg=" . s:ConstantValueColor
exe "hi Comment                          ctermfg=" . s:CommentColor
exe "hi Comment                            guifg=" . s:CommentColor
exe "hi Identifier                       ctermfg=" . s:NormalColor
exe "hi Identifier                         guifg=" . s:NormalColor
exe "hi Constant                         ctermfg=" . s:ConstantValueColor
exe "hi Constant                           guifg=" . s:ConstantValueColor
exe "hi Statement                        ctermfg=" . s:NormalColor
exe "hi Statement                          guifg=" . s:NormalColor
exe "hi PreProc                          ctermfg=" . s:StandoutColor
exe "hi PreProc                            guifg=" . s:StandoutColor
exe "hi Type                             ctermfg=" . s:SpecialStandoutColor
exe "hi Type                               guifg=" . s:SpecialStandoutColor
exe "hi SpecialCharacter                 ctermfg=" . s:SpecialStandoutColor
exe "hi SpecialCharacter                   guifg=" . s:SpecialStandoutColor
exe "hi LineNr                           ctermfg=" . s:NormalColor               . " ctermbg=" . s:LineNumberBgColor
exe "hi LineNr                             guifg=" . s:NormalColor               . "   guibg=" . s:LineNumberBgColor
exe "hi Special                          ctermfg=" . s:NormalColor
exe "hi Special                            guifg=" . s:NormalColor

" search
exe "hi MatchParen                       ctermfg=" . s:NormalColor               . " ctermbg=" . s:StandoutColor
exe "hi MatchParen                         guifg=" . s:NormalColor               . "   guibg=" . s:StandoutColor
exe "hi Todo                             ctermfg=" . s:HightlightTextColor       . " ctermbg=" . s:HighlightColor            . " cterm=bold"
exe "hi Todo                               guifg=" . s:HightlightTextColor       . "   guibg=" . s:HighlightColor            . "   gui=bold"
exe "hi Search                           ctermfg=" . s:NormalColor               . " ctermbg=" . s:HighlightColor            . " cterm=bold"
exe "hi Search                             guifg=" . s:NormalColor               . "   guibg=" . s:HighlightColor            . "   gui=bold"
exe "hi IncSearch                        ctermfg=" . s:NormalColor               . " ctermbg=" . s:HighlightColor            . " cterm=bold"
exe "hi IncSearch                          guifg=" . s:NormalColor               . "   guibg=" . s:HighlightColor            . "   gui=bold"

" ruler
exe "hi ColorColumn                      ctermfg=none"                           . " ctermbg=" . s:LightTextColor
exe "hi ColorColumn                        guifg=none"                           . "   guibg=" . s:LightTextColor

" cursor
exe "hi CursorLineNr                     ctermfg=" . s:NormalColor
exe "hi CursorLineNr                       guifg=" . s:NormalColor


" match menu
hi PmenuSbar              ctermbg=27 guifg=27
hi PmenuThumb             ctermbg=White guibg=White " ?
hi Pmenu                  ctermbg=27 ctermfg=White guifg=White guibg=Gray
hi PmenuSel               ctermbg=21 ctermfg=White gui=bold guifg=Black guibg=Yellow

" tabs
exe "hi TabLineSel                       ctermfg=" . s:BackgroudColor            . " ctermbg=" . s:StandoutColor
exe "hi TabLineSel                         guifg=" . s:BackgroudColor            . "   guibg=" . s:StandoutColor
exe "hi TabLine                          ctermfg=" . s:NormalColor               . " ctermbg=" . s:BackgroudColor
exe "hi TabLine                            guifg=" . s:NormalColor               . "   guibg=" . s:BackgroudColor
exe "hi TabLineFill                      ctermfg=" . s:BackgroudColor            . " ctermbg=" . s:BackgroudColor
exe "hi TabLineFill                        guifg=" . s:BackgroudColor            . "   guibg=" . s:BackgroudColor

""""""""""""""""""""""" language specific

exe "hi Conditional                   ctermfg=" . s:StandoutColor
exe "hi Conditional                     guifg=" . s:StandoutColor
exe "hi Repeat                        ctermfg=" . s:StandoutColor
exe "hi Repeat                          guifg=" . s:StandoutColor

" php
exe "hi phpStructure                     ctermfg=" . s:StandoutColor
exe "hi phpStructure                       guifg=" . s:StandoutColor
exe "hi phpStatement                     ctermfg=" . s:StandoutColor
exe "hi phpStatement                       guifg=" . s:StandoutColor
exe "hi phpKeyword                       ctermfg=" . s:StandoutColor
exe "hi phpKeyword                         guifg=" . s:StandoutColor
exe "hi phpException                     ctermfg=" . s:StandoutColor
exe "hi phpException                       guifg=" . s:StandoutColor
exe "hi phpSpecialFunction               ctermfg=" . s:SpecialStandoutColor
exe "hi phpSpecialFunction                 guifg=" . s:SpecialStandoutColor
exe "hi phpMemberSelector                ctermfg=" . s:NormalColor
exe "hi phpMemberSelector                  guifg=" . s:NormalColor
exe "hi phpVarSelector                   ctermfg=" . s:NormalColor
exe "hi phpVarSelector                     guifg=" . s:NormalColor
exe "hi phpFunctions                     ctermfg=" . s:SpecialStandoutColor
exe "hi phpFunctions                       guifg=" . s:SpecialStandoutColor
" exe "hi                       ctermfg=" . s:StandoutColor
" exe "hi                         guifg=" . s:StandoutColor
" exe "hi                       ctermfg=" . s:StandoutColor
" exe "hi                         guifg=" . s:StandoutColor
" exe "hi                       ctermfg=" . s:StandoutColor
" exe "hi                         guifg=" . s:StandoutColor
" hi phpStructure           ctermfg=21 guifg=21
" hi phpStatement           ctermfg=21 guifg=21
" hi phpKeyword             ctermfg=21 guifg=21
" hi phpConditional         ctermfg=21 guifg=21
" hi phpException           ctermfg=21 guifg=21
" hi phpRepeat              ctermfg=21 guifg=21
" hi phpMemberSelector      ctermfg=Black guifg=Black
" hi phpVarSelector         ctermfg=Black guifg=Black
" hi phpIntVar              cterm=bold gui=bold
hi phpBacktick            ctermfg=Red cterm=bold guifg=Red gui=bold
" hi phpSpecialFunction     ctermfg=DarkBlue guifg=DarkBlue
" hi Type                ctermfg=DarkBlue guifg=DarkBlue
" hi phpFunctions           ctermfg=DarkBlue guifg=DarkBlue
hi phpHereDoc             ctermfg=12 guifg=12
hi phpHereDoc             ctermfg=12 guifg=12

" sql
hi sqlStatement           ctermfg=DarkBlue guifg=DarkBlue
hi sqlKeyword             ctermfg=DarkBlue guifg=DarkBlue

" js
hi javascriptOperator     ctermfg=21 guifg=21
hi javascriptStatement    ctermfg=21 guifg=21
hi javascriptFunction     ctermfg=21 guifg=21
hi javaScriptIdentifier   ctermfg=21 guifg=21
hi javaScriptConditional  ctermfg=21 guifg=21
hi javaScriptRepeat       ctermfg=21 guifg=21
hi javaScriptNull         ctermfg=21 guifg=21
hi javaScriptException    ctermfg=21 guifg=21
hi javaScriptBranch       ctermfg=21 guifg=21
hi javaScriptLabel        ctermfg=21 guifg=21
hi javaScriptReserved     ctermfg=21 guifg=21
hi javaScriptMember       ctermfg=21 guifg=21
hi javaScriptGlobal       ctermfg=21 guifg=21

" html
hi htmlTag                ctermfg=Black guifg=Black
hi htmlTagN               ctermfg=Black guifg=Black cterm=bold gui=bold
hi htmlTagName            ctermfg=Black guifg=Black cterm=bold gui=bold
hi htmlString             ctermfg=4 guifg=Red
hi htmlArg                ctermfg=Black guifg=Black

" mediawiki markdown
exe "hi wikiBold                         ctermfg=" . s:StandoutColor
exe "hi wikiBold                           guifg=" . s:StandoutColor
exe "hi wikiParaFormatChar               ctermfg=" . s:ConstantValueColor
exe "hi wikiParaFormatChar                 guifg=" . s:ConstantValueColor
exe "hi wikiLink                         ctermfg=" . s:SpecialStandoutColor
exe "hi wikiLink                           guifg=" . s:SpecialStandoutColor
exe "hi wikiItalic                       ctermfg=" . s:StandoutColor
exe "hi wikiItalic                         guifg=" . s:StandoutColor

""""""""""""""""""""""" plugin specific

" NERDTree
hi NERDTreeHelp           ctermfg=Gray guifg=Gray
hi NERDTreeUp             ctermfg=Gray guifg=Gray
hi NERDTreeCWD            cterm=bold gui=bold

" CtrlP
hi CtrlPMatch             ctermbg=Yellow

" hi Cursor
" hi lCursor
" hi SpecialKey
" hi NonText
" hi Directory
" hi ErrorMsg
" hi IncSearch
" hi MoreMsg
" hi ModeMsg
" hi Question
" hi StatusLine
" hi StatusLineNC
" hi VertSplit
" hi Title
" hi Visual
" hi VisualNOS
" hi WarningMsg
" hi WildMenu
" hi Folded
" hi FoldColumn
" hi DiffAdd
" hi DiffChange
" hi DiffDelete
" hi DiffText
" hi SignColumn
" hi Conceal
" hi SpellBad
" hi SpellCap
" hi SpellRare
" hi SpellLocal
" hi TabLine
" hi TabLineSel
" hi TabLineFill
" hi CursorColumn
" hi ColorColumn
" hi Underlined
" hi Ignore
" hi Error
