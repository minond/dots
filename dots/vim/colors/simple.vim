" Changelog:
" - 33  -> 236
" - 90  -> 240

set background=light
syntax reset

" Global
hi Normal                             ctermbg=none             ctermfg=black
hi NonText                            ctermbg=none             ctermfg=243

" Search
hi Search                             ctermbg=blue             ctermfg=white
hi IncSearch                          ctermbg=blue             ctermfg=white

" Interface
hi StatusLine                         ctermbg=black            ctermfg=253
hi StatusLineNC                       ctermbg=black            ctermfg=255
hi VertSplit                          ctermbg=248              ctermfg=white
hi Pmenu                              ctermbg=black            ctermfg=white
hi MatchParen                         ctermbg=243              ctermfg=white
hi LineNr                             ctermbg=none             ctermfg=248
hi SignColumn                         ctermbg=none             ctermfg=black
hi WildMenu                           ctermbg=none             ctermfg=black
hi ColorColumn                        ctermbg=none             ctermfg=240          cterm=underline
hi CursorColumn                       ctermbg=229              ctermfg=none         cterm=none
hi CursorLine                         ctermbg=229              ctermfg=none         cterm=none
hi Visual                             ctermbg=229              ctermfg=none         cterm=none

" Diff
hi DiffAdd                            ctermbg=none             ctermfg=37           cterm=none
hi DiffDelete                         ctermbg=none             ctermfg=124          cterm=none
hi DiffChange                         ctermbg=none             ctermfg=203          cterm=none
hi DiffText                           ctermbg=none             ctermfg=203          cterm=none

" Code
hi Todo                               ctermbg=none             ctermfg=red
hi Title                              ctermbg=none             ctermfg=black
hi Delimiter                          ctermbg=none             ctermfg=black
hi Boolean                            ctermbg=none             ctermfg=black
hi Number                             ctermbg=none             ctermfg=black
hi Statement                          ctermbg=none             ctermfg=black
hi Identifier                         ctermbg=none             ctermfg=black
hi Function                           ctermbg=none             ctermfg=black
hi Operator                           ctermbg=none             ctermfg=black
hi Special                            ctermbg=none             ctermfg=black
hi SpecialKey                         ctermbg=none             ctermfg=black
hi Error                              ctermbg=none             ctermfg=red
hi Comment                            ctermbg=none             ctermfg=248
hi String                             ctermbg=none             ctermfg=240
hi Character                          ctermbg=none             ctermfg=240
hi SpecialChar                        ctermbg=none             ctermfg=240          cterm=bold
hi Type                               ctermbg=none             ctermfg=236
hi Exception                          ctermbg=none             ctermfg=236
hi Keyword                            ctermbg=none             ctermfg=236
hi PreProc                            ctermbg=none             ctermfg=236          cterm=bold
hi Include                            ctermbg=none             ctermfg=236          cterm=none
hi Statement                          ctermbg=none             ctermfg=236
hi Constant                           ctermbg=none             ctermfg=236
hi Conditional                        ctermbg=none             ctermfg=236
hi Label                              ctermbg=none             ctermfg=236
hi Structure                          ctermbg=none             ctermfg=236
hi StorageClass                       ctermbg=none             ctermfg=236

" Plugins
hi GitGutterAddDefault                ctermbg=none             ctermfg=43
hi GitGutterChangeDefault             ctermbg=none             ctermfg=27
hi GitGutterDeleteDefault             ctermbg=none             ctermfg=red

hi NERDTreeClosable                                            ctermfg=236
hi NERDTreeDir                                                 ctermfg=240
hi NERDTreeDirSlash                                            ctermfg=252
hi NERDTreeExecFile                                            ctermfg=none
hi NERDTreeOpenable                                            ctermfg=236
hi NERDTreeExecFile                   ctermbg=white            ctermfg=black

" Overrides
hi link typescriptEndColons                                    typescriptOpSymbols
hi link typescriptExceptions                                   Exception
hi link typescriptInterpolation                                SpecialChar
hi link typescriptInterpolationDelimiter                       SpecialChar
hi link typescriptSpecial                                      SpecialChar
