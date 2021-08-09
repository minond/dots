nnoremap <buffer> <leader>r :call ftplugin#scala#SendSlimeNoScala("run")<CR>
nnoremap <buffer> <leader>R :call ftplugin#scala#SendSlimeNoScala("run")<CR>
nnoremap <buffer> <leader>c :call ftplugin#scala#SendSlimeNoScala("compile")<CR>
nnoremap <buffer> <leader>x :call ftplugin#scala#SendSlimeNoScala("clean ; compile")<CR>
nnoremap <buffer> <leader>t :call ftplugin#scala#SendSlimeNoScala("test")<CR>
