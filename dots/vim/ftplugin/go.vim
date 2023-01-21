setlocal noexpandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4

nnoremap <buffer> <leader>b :GoBuild<cr>
nnoremap <buffer> <leader>B :GoTestCompile<cr>
nnoremap <buffer> <leader>D :GoDocBrowser<cr>
nnoremap <buffer> <leader>l :GoMetaLinter<cr>
nnoremap <buffer> <leader>r :!clear<cr>:GoRun<cr>
nnoremap <buffer> <leader>t :GoTest<cr>
nnoremap <buffer> <leader>8 :GoTestFunc<cr>
nnoremap <buffer> <leader>9 :GoCoverageBrowser<cr>

let g:go_fmt_command = "goimports"
let g:go_fmt_options = {
  \ 'gofmt': '-s',
  \ 'goimports': '-local github.com/minond',
  \ }

let g:go_doc_keywordprg_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_textobj_enabled = 0
let g:go_template_autocreate = 0
let g:go_metalinter_command='golangci-lint'
