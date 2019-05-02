setlocal noexpandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4

nnoremap <buffer> <leader>b :GoBuild<cr>
nnoremap <buffer> <leader>B :GoTestCompile<cr>
nnoremap <buffer> <leader>d :GoDoc<cr>
nnoremap <buffer> <leader>D :GoDocBrowser<cr>
nnoremap <buffer> <leader>g :GoDef<cr>
nnoremap <buffer> <leader>G :GoDefType<cr>
nnoremap <buffer> <leader>i :GoInstall<cr>:e<cr>
nnoremap <buffer> <leader>l :GoMetaLinter<cr>
nnoremap <buffer> <leader>r :w<cr>:!clear<cr>:GoRun<cr>
nnoremap <buffer> <leader>t :GoTest<cr>
nnoremap <buffer> <leader>T :GoCoverageBrowser<cr>

let g:go_fmt_command = "goimports"
let g:go_fmt_options = {
  \ 'gofmt': '-s',
  \ 'goimports': '-local gitlab.mx.com,github.com/minond',
  \ }

let g:go_doc_keywordprg_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_textobj_enabled = 0
let g:go_template_autocreate = 0
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_metalinter_command='golangci-lint'

" Don't auto-lint Go files
let g:ale_go_golint_executable = ''
let g:ale_go_golint_options = ''
let g:ale_go_govet_options = ''
