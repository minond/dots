nnoremap <buffer> <leader>b :w<cr>:SlimeSend0 "npm run build\r"<cr>
nnoremap <buffer> <leader>t :w<cr>:SlimeSend0 "npm run test\r"<cr>
nnoremap <buffer> <leader>T :w<cr>:SlimeSend0 "npm run test -- " .. expand("%") .. "\r"<cr>

nnoremap <buffer> <leader>r :w<cr>:Dispatch node %<cr>
