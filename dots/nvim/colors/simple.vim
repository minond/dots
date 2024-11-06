" Vim color file
" Maintainer: Marcos Minond
" Last Change: 2018-02-04

set background=light
syntax reset

let g:SimpleColBackground = get(g:, 'SimpleColBackground', '248')
let g:SimpleColCurrentLine = get(g:, 'SimpleColCurrentLine', '229')
let g:SimpleColError = get(g:, 'SimpleColError', '196')
let g:SimpleColScalar = get(g:, 'SimpleColScalar', '238')
let g:SimpleColURL = get(g:, 'SimpleColURL', '20')

fun <SID>X(group, fg, bg, attr)
  exec 'hi clear ' . a:group

  if a:fg != ''
    exec 'hi ' . a:group . ' ctermfg=' . a:fg
  endif
  if a:bg != ''
    exec 'hi ' . a:group . ' ctermbg=' . a:bg
  endif
  if a:attr != ''
    exec 'hi ' . a:group . ' cterm=' . a:attr
  endif
endfun

fun <SID>XS(gs, fg, bg, attr)
  for group in a:gs
    call <SID>X(group, a:fg, a:bg, a:attr)
  endfor
endfun

" Global
call <SID>X('NonText', '243', 'none', '')
call <SID>X('Normal', 'black', 'none', '')

" Search
call <SID>XS(['Search', 'IncSearch'], 'black', '226', 'underline')

" Interface
call <SID>X('ColorColumn', g:SimpleColBackground, 'none', 'underline')
call <SID>X('CursorLineNR', 'black', 'none', '')
call <SID>X('LineNr', g:SimpleColBackground, '', '')
call <SID>X('MatchParen', 'black', '251', '')
call <SID>X('SignColumn', 'black', 'none', '')
call <SID>X('StatusLine', 'black', '255', 'bold')
call <SID>X('StatusLineNC', 'black', '255', '')
call <SID>X('VertSplit', g:SimpleColBackground, 'none', '')
call <SID>X('Visual', 'none', g:SimpleColCurrentLine, '')
call <SID>X('WildMenu', 'black', 'none', '')
call <SID>X('FoldColumn', 'none', 'none', '')
call <SID>XS(['CursorColumn', 'CursorLine'], 'none', g:SimpleColCurrentLine, 'none')

" Pmenu
call <SID>X('Pmenu', 'black', '255', '')
call <SID>X('PmenuSbar', 'white', '250', '')
call <SID>X('PmenuSel', 'white', g:SimpleColScalar, '')
call <SID>X('PmenuThumb', 'white', '246', '')

" Spell
call <SID>X('SpellCap', 'none', 'none', '')

" Diff
call <SID>X('DiffChange', '203', 'none', 'none')
call <SID>XS(['DiffAdd', 'diffAdded'], g:SimpleColScalar, 'none', '')
call <SID>XS(['DiffDelete', 'diffRemoved'], g:SimpleColError, 'none', '')
call <SID>XS(['DiffText', 'diffLine', 'diffFile', 'diffNewFile'], 'black', 'none', '')

" Code
call <SID>XS(['Constant', 'Delimiter', 'Function', 'Identifier', 'Operator', 'Special', 'SpecialKey', 'StorageClass', 'Structure', 'Title', 'Type', 'Typedef'], 'black', 'none', '')
call <SID>XS(['Label', 'Conditional', 'Exception', 'Include', 'Keyword', 'PreProc', 'Statement'], 'black', 'none', '')

" Code : highlights
call <SID>XS(['Todo', 'Error'], g:SimpleColError, 'none', '')

" Code : comments
call <SID>X('Comment', g:SimpleColBackground, 'none', '')
call <SID>X('SpecialComment', g:SimpleColBackground, 'none', '')

" Code : primitives
call <SID>XS(['Number', 'Boolean'], g:SimpleColScalar, 'none', '')

" Code : user types
call <SID>X('SpecialChar', g:SimpleColScalar, 'none', '')
call <SID>XS(['Character', 'String'], g:SimpleColScalar, 'none', '')

" Plugins
call <SID>X('GitGutterAddDefault', '70', 'none', '')
call <SID>X('GitGutterChangeDefault', g:SimpleColScalar, 'none', '')
call <SID>X('GitGutterDeleteDefault', g:SimpleColError, 'none', '')
call <SID>X('NERDTreeClosable', 'black', '', '')
call <SID>X('NERDTreeDir', '240', '', '')
call <SID>X('NERDTreeDirSlash', '252', '', '')
call <SID>X('NERDTreeExecFile', g:SimpleColURL, 'none', '')
call <SID>X('NERDTreeOpenable', 'black', '', '')

" Overrides
call <SID>X('htmlItalic', 'black', 'none', 'underline')
call <SID>X('makeTarget', g:SimpleColScalar, 'none', '')
call <SID>XS(['cssInclude', 'vimInsert', 'htmlH1', 'htmlBold', 'mkdListItem'], 'black', 'none', 'bold')
call <SID>XS(['htmlLink', 'mkdInlineURL'], g:SimpleColURL, 'none', '')
call <SID>XS(['scalaDocLinks', 'scalaCommentAnnotation'], g:SimpleColBackground, 'none', '')

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
hi link mkdBold                           htmlBold
hi link mkdCode                           SpecialChar
hi link mkdHeading                        htmlH1
hi link mkdLink                           htmlLink
hi link mkdSnippetEBNF                    mkdCode
hi link mkdSnippetTEXT                    mkdCode
hi link scalaCommentCodeBlock             Comment
hi link scalaDocLinks                     Comment
hi link tsxCloseString                    tsxTagName
hi link typescriptEndColons               typescriptOpSymbols
hi link typescriptExceptions              Exception
hi link typescriptInterpolation           SpecialChar
hi link typescriptInterpolationDelimiter  SpecialChar
hi link typescriptSpecial                 SpecialChar
hi link typescriptStorageClass            Statement

delf <SID>X
delf <SID>XS
