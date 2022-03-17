nnoremap <buffer> <leader>t :w<cr>:SlimeSend0 "npm run test\r"<cr>
nnoremap <buffer> <leader>b :w<cr>:SlimeSend0 "npm run build\r"<cr>
nnoremap <buffer> <leader>s :call Preserve("silent %!prettier --stdin-filepath %")<cr><esc>:w<cr>
