setlocal noexpandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4

nnoremap <buffer> <leader>b :GoBuild<cr>
nnoremap <buffer> <leader>l :GoMetaLinter<cr>

nnoremap <buffer> <leader>d :GoDoc<cr>
nnoremap <buffer> <leader>g :GoDef<cr>

nnoremap <buffer> <leader>tt :GoTest<cr>
nnoremap <buffer> <leader>tc :GoTestCompile<cr>

let g:go_fmt_command = "goimports"
let g:go_doc_keywordprg_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_textobj_enabled = 0
