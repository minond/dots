hi clear
let colors_name = "minond"
set background=light

if exists("syntax_on")
	syntax reset
endif

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

""""""""""""""""""""""" standard

" echo synIDattr(synID(line("."), col("."), 1), "name")
hi Normal                 ctermfg=Black ctermbg=White guifg=Black guibg=White
hi None                   ctermfg=12 guifg=12
hi Comment                ctermfg=Gray guifg=Gray "7, 27
hi Identifier             ctermfg=Black guifg=Black
hi Constant               ctermfg=12 guifg=12
hi Statement              ctermfg=Black guifg=Black
hi PreProc                ctermfg=21 guifg=21 "ie function
hi Type                   ctermfg=21 guifg=21 "ie private
hi LineNr                 ctermfg=Gray guifg=Gray
hi Special                ctermfg=Black guifg=Black
hi MatchParen             ctermfg=Black guifg=Black ctermbg=21 guibg=21
hi Todo                   ctermfg=Red ctermbg=Yellow cterm=bold gui=bold guibg=Yellow guifg=Red
hi Search                 ctermfg=Black ctermbg=Yellow cterm=bold gui=bold guifg=Black guibg=Yellow
hi ColorColumn            ctermbg=Grey ctermfg=White guibg=Grey guifg=White

" cursor
hi CursorLineNr           ctermfg=Black guifg=Black
hi CursorLine             ctermbg=NONE guibg=NONE

" match menu
hi PmenuSbar              ctermbg=27 guifg=27
hi PmenuThumb             ctermbg=White guibg=White " ?
hi Pmenu                  ctermbg=27 ctermfg=White guifg=White guibg=Gray
hi PmenuSel               ctermbg=21 ctermfg=White gui=bold guifg=Black guibg=Yellow

" tabs
hi TabLineSel             ctermbg=21 ctermfg=White guibg=21 guifg=White
hi TabLine                ctermfg=Black ctermbg=White guifg=Black guibg=White
hi TabLineFill            ctermbg=White ctermfg=White guibg=White guifg=White

""""""""""""""""""""""" language specific

" php
hi phpStructure           ctermfg=21 guifg=21
hi phpStatement           ctermfg=21 guifg=21
hi phpKeyword             ctermfg=21 guifg=21
hi phpMemberSelector      ctermfg=Black guifg=Black
hi phpVarSelector         ctermfg=Black guifg=Black
hi phpConditional         ctermfg=21 guifg=21
hi phpException           ctermfg=21 guifg=21
hi phpRepeat              ctermfg=21 guifg=21
hi phpHereDoc             ctermfg=12 guifg=12
hi phpBacktick            ctermfg=Red cterm=bold guifg=Red gui=bold
hi phpIntVar              cterm=bold gui=bold
hi phpSpecialFunction     ctermfg=DarkBlue guifg=DarkBlue
hi phpType                ctermfg=DarkBlue guifg=DarkBlue
hi phpFunctions           ctermfg=DarkBlue guifg=DarkBlue
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
