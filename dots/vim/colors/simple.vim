" Changelog:
" - 33  -> 236
" - 90  -> 240
" - 240 -> 242
" - 242 -> 19
" - 19  -> 27
" - 27  -> 26
" - 17  -> 21

set background=light
syntax reset

" Global
hi NonText                            ctermbg=none             ctermfg=243
hi Normal                             ctermbg=none             ctermfg=black

" Search
hi IncSearch                          ctermbg=blue             ctermfg=white
hi Search                             ctermbg=blue             ctermfg=white

" Interface
hi ColorColumn                        ctermbg=none             ctermfg=none         cterm=underline
hi CursorColumn                       ctermbg=229              ctermfg=none         cterm=none
hi CursorLine                         ctermbg=229              ctermfg=none         cterm=none
hi LineNr                             ctermbg=none             ctermfg=248
hi MatchParen                         ctermbg=243              ctermfg=white
hi Pmenu                              ctermbg=black            ctermfg=white
hi SignColumn                         ctermbg=none             ctermfg=black
hi StatusLine                         ctermfg=white            ctermbg=33           cterm=bold
hi StatusLineNC                       ctermfg=black            ctermbg=251          cterm=bold
hi VertSplit                          ctermbg=248              ctermfg=white
hi Visual                             ctermbg=229              ctermfg=none         cterm=none
hi WildMenu                           ctermbg=none             ctermfg=black

" Diff
hi DiffAdd                            ctermbg=none             ctermfg=37           cterm=none
hi DiffChange                         ctermbg=none             ctermfg=203          cterm=none
hi DiffDelete                         ctermbg=none             ctermfg=124          cterm=none
hi DiffText                           ctermbg=none             ctermfg=203          cterm=none

" Code : color 1
hi Delimiter                          ctermbg=none             ctermfg=black
hi Function                           ctermbg=none             ctermfg=black
hi Identifier                         ctermbg=none             ctermfg=black
hi Operator                           ctermbg=none             ctermfg=black
hi Special                            ctermbg=none             ctermfg=black
hi SpecialKey                         ctermbg=none             ctermfg=black
hi Statement                          ctermbg=none             ctermfg=black
hi Title                              ctermbg=none             ctermfg=black

" Code : color 2
hi Conditional                        ctermbg=none             ctermfg=236
hi Constant                           ctermbg=none             ctermfg=236
hi Exception                          ctermbg=none             ctermfg=236
hi Include                            ctermbg=none             ctermfg=236          cterm=bold
hi Keyword                            ctermbg=none             ctermfg=236
hi Label                              ctermbg=none             ctermfg=236
hi PreProc                            ctermbg=none             ctermfg=236          cterm=bold
hi Statement                          ctermbg=none             ctermfg=236
hi StorageClass                       ctermbg=none             ctermfg=236
hi Structure                          ctermbg=none             ctermfg=236
hi Type                               ctermbg=none             ctermfg=236

" Code : highlights
hi Todo                               ctermbg=none             ctermfg=red
hi Error                              ctermbg=none             ctermfg=red

" Code : comments
hi Comment                            ctermbg=none             ctermfg=248
hi SpecialComment                     ctermbg=none             ctermfg=248          cterm=bold

" Code : primitives
hi Boolean                            ctermbg=none             ctermfg=21
hi Number                             ctermbg=none             ctermfg=21

" Code : user types
hi String                             ctermbg=none             ctermfg=26
hi Character                          ctermbg=none             ctermfg=26
hi SpecialChar                        ctermbg=none             ctermfg=26           cterm=bold

" Plugins
hi GitGutterAddDefault                ctermbg=none             ctermfg=43
hi GitGutterChangeDefault             ctermbg=none             ctermfg=26
hi GitGutterDeleteDefault             ctermbg=none             ctermfg=red
hi NERDTreeClosable                                            ctermfg=236
hi NERDTreeDir                                                 ctermfg=240
hi NERDTreeDirSlash                                            ctermfg=252
hi NERDTreeExecFile                                            ctermfg=none
hi NERDTreeExecFile                   ctermbg=white            ctermfg=black
hi NERDTreeOpenable                                            ctermfg=236

" Overrides
hi cssInclude                         ctermfg=black            ctermbg=none         cterm=none
hi htmlH1                             ctermfg=26               ctermbg=none         cterm=bold
hi htmlItalic                         ctermfg=none             ctermbg=none         cterm=none
hi htmlLink                           ctermfg=blue             ctermbg=none         cterm=bold
hi makeTarget                         ctermfg=26               ctermbg=none         cterm=bold
hi mkdInlineURL                       ctermfg=blue             ctermbg=none         cterm=bold
hi mkdListItem                        ctermfg=red              ctermbg=none         cterm=bold
hi vimInsert                          ctermfg=black            ctermbg=none         cterm=bold

" Overrides : re-linking
hi link cssAttributeSelector                                   cssTagName
hi link cssClassName                                           cssTagName
hi link cssIdentifier                                          cssTagName
hi link cssPseudoClassId                                       cssTagName
hi link cssSelectorOp                                          cssTagName
hi link cssTagName                                             makeTarget
hi link cssVendor                                              cssTagName
hi link goSpecialString                                        SpecialChar
hi link htmlH2                                                 htmlH1
hi link htmlH3                                                 htmlH1
hi link htmlH4                                                 htmlH1
hi link htmlH5                                                 htmlH1
hi link htmlH5                                                 htmlH1
hi link htmlSpecialChar                                        SpecialChar
hi link makeCommands                                           none
hi link mkdLink                                                htmlLink
hi link typescriptEndColons                                    typescriptOpSymbols
hi link typescriptExceptions                                   Exception
hi link typescriptInterpolation                                SpecialChar
hi link typescriptInterpolationDelimiter                       SpecialChar
hi link typescriptSpecial                                      SpecialChar
