let g:scala_run_command = get(g:, "scala_run_command", "run")
let g:scala_test_command = get(g:, "scala_test_command", "test")
let g:scala_compile_command = get(g:, "scala_compile_command", "compile")
let g:scala_clean_compile_command = get(g:, "scala_clean_compile_command", "clean ; compile")

nnoremap <buffer> <leader>r :call ftplugin#scala#SendSlimeNoScala(g:scala_run_command)<CR>
nnoremap <buffer> <leader>R :call ftplugin#scala#SendSlimeNoScala(g:scala_run_command)<CR>
nnoremap <buffer> <leader>c :call ftplugin#scala#SendSlimeNoScala(g:scala_compile_command)<CR>
nnoremap <buffer> <leader>x :call ftplugin#scala#SendSlimeNoScala(g:scala_clean_compile_command)<CR>
nnoremap <buffer> <leader>t :call ftplugin#scala#SendSlimeNoScala(g:scala_test_command)<CR>
