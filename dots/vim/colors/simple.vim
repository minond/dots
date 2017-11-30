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
hi String                             ctermbg=none             ctermfg=90
hi Character                          ctermbg=none             ctermfg=90
hi SpecialChar                        ctermbg=none             ctermfg=90
hi Type                               ctermbg=none             ctermfg=33
hi Exception                          ctermbg=none             ctermfg=33
hi Keyword                            ctermbg=none             ctermfg=33
hi PreProc                            ctermbg=none             ctermfg=33
hi Statement                          ctermbg=none             ctermfg=33
hi Constant                           ctermbg=none             ctermfg=33
hi Conditional                        ctermbg=none             ctermfg=33
hi Label                              ctermbg=none             ctermfg=33
hi Structure                          ctermbg=none             ctermfg=33
hi StorageClass                       ctermbg=none             ctermfg=33

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
hi link typescriptSpecial SpecialChar
