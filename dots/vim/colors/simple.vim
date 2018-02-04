" Vim color file
" Maintainer: Marcos Minond
" Last Change: 2018-02-04

set background=light
syntax reset

let s:colBackground = "248"
let s:colError = "196"
let s:colLine = "230"
let s:colScalar = "27"
let s:colURL = "blue"

fun <SID>X(group, fg, bg, attr)
  if a:fg != ""
    exec "hi " . a:group . " guifg=" . a:fg . " ctermfg=" . a:fg
  endif
  if a:bg != ""
    exec "hi " . a:group . " guibg=" . a:bg . " ctermbg=" . a:bg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Global
call <SID>X("NonText", "243", "none", "")
call <SID>X("Normal", "black", "none", "")

" Search
call <SID>X("IncSearch", "black", "226", "bold")
call <SID>X("Search", "black", "226", "bold")

" Interface
call <SID>X("ColorColumn", "none", "none", "underline")
call <SID>X("CursorColumn", "none", s:colLine, "none")
call <SID>X("CursorLine", "none", s:colLine, "none")
call <SID>X("LineNr", s:colBackground, "none", "")
call <SID>X("MatchParen", "black", "251", "")
call <SID>X("Pmenu", "white", "black", "")
call <SID>X("SignColumn", "black", "none", "")
call <SID>X("StatusLine", "white", "33", "bold")
call <SID>X("StatusLineNC", "black", "251", "bold")
call <SID>X("VertSplit", "white", s:colBackground, "")
call <SID>X("Visual", "none", s:colLine, "none")
call <SID>X("WildMenu", "black", "none", "")

" Diff
call <SID>X("DiffAdd", "37", "none", "none")
call <SID>X("DiffChange", "203", "none", "none")
call <SID>X("DiffDelete", "124", "none", "none")
call <SID>X("DiffText", "203", "none", "none")

" Code
call <SID>X("Conditional", "black", "none", "")
call <SID>X("Constant", "black", "none", "")
call <SID>X("Delimiter", "black", "none", "")
call <SID>X("Exception", "black", "none", "")
call <SID>X("Function", "black", "none", "")
call <SID>X("Identifier", "black", "none", "")
call <SID>X("Include", "black", "none", "bold")
call <SID>X("Keyword", "black", "none", "")
call <SID>X("Label", "black", "none", "")
call <SID>X("Operator", "black", "none", "")
call <SID>X("PreProc", "black", "none", "bold")
call <SID>X("Special", "black", "none", "")
call <SID>X("SpecialKey", "black", "none", "")
call <SID>X("Statement", "black", "none", "")
call <SID>X("StorageClass", "black", "none", "")
call <SID>X("Structure", "black", "none", "")
call <SID>X("Title", "black", "none", "")
call <SID>X("Type", "black", "none", "")

" Code : highlights
call <SID>X("Error", s:colError, "none", "")
call <SID>X("Todo", s:colError, "none", "")

" Code : comments
call <SID>X("Comment", s:colBackground, "none", "")
call <SID>X("SpecialComment", s:colBackground, "none", "bold")

" Code : primitives
call <SID>X("Boolean", s:colScalar, "none", "")
call <SID>X("Number", s:colScalar, "none", "")

" Code : user types
call <SID>X("Character", s:colScalar, "none", "")
call <SID>X("SpecialChar", s:colScalar, "none", "bold")
call <SID>X("String", s:colScalar, "none", "")

" Plugins
call <SID>X("GitGutterAddDefault", "70", "none", "")
call <SID>X("GitGutterChangeDefault", s:colScalar, "none", "")
call <SID>X("GitGutterDeleteDefault", s:colError, "none", "")
call <SID>X("NERDTreeClosable", "black", "", "")
call <SID>X("NERDTreeDir", "240", "", "")
call <SID>X("NERDTreeDirSlash", "252", "", "")
call <SID>X("NERDTreeExecFile", "black", "white", "")
call <SID>X("NERDTreeOpenable", "black", "", "")

" Overrides
call <SID>X("cssInclude", "black", "none", "none")
call <SID>X("htmlH1", "black", "none", "bold")
call <SID>X("htmlItalic", "none", "none", "none")
call <SID>X("htmlLink", s:colURL, "none", "bold")
call <SID>X("makeTarget", s:colScalar, "none", "bold")
call <SID>X("mkdInlineURL", s:colURL, "none", "bold")
call <SID>X("mkdListItem", s:colError, "none", "bold")
call <SID>X("vimInsert", "black", "none", "bold")

" Overrides : re-linking
hi link cssAttributeSelector              cssTagName
hi link cssClassName                      cssTagName
hi link cssIdentifier                     cssTagName
hi link cssPseudoClassId                  cssTagName
hi link cssSelectorOp                     cssTagName
hi link cssTagName                        makeTarget
hi link cssVendor                         cssTagName
hi link goSpecialString                   SpecialChar
hi link htmlH2                            htmlH1
hi link htmlH3                            htmlH1
hi link htmlH4                            htmlH1
hi link htmlH5                            htmlH1
hi link htmlH5                            htmlH1
hi link htmlSpecialChar                   SpecialChar
hi link makeCommands                      none
hi link mkdCode                           SpecialChar
hi link mkdLink                           htmlLink
hi link mkdSnippetEBNF                    mkdCode
hi link typescriptEndColons               typescriptOpSymbols
hi link typescriptExceptions              Exception
hi link typescriptInterpolation           SpecialChar
hi link typescriptInterpolationDelimiter  SpecialChar
hi link typescriptSpecial                 SpecialChar

delf <SID>X
