nnoremap <buffer> <leader>r :w<cr>:!clear; scala %;<cr>

nnoremap <buffer> <leader>R :call ftplugin#scala#SendSlimeNoScala("run")<CR>
nnoremap <buffer> <leader>C :call ftplugin#scala#SendSlimeNoScala("compile")<CR>
nnoremap <buffer> <leader>T :call ftplugin#scala#SendSlimeNoScala("test")<CR>
