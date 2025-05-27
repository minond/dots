nnoremap <buffer> <leader>b :w<cr>:SlimeSend0 "npm run build\r"<cr>
nnoremap <buffer> <leader>t :w<cr>:SlimeSend0 "npm run test\r"<cr>
nnoremap <buffer> <leader>T :w<cr>:SlimeSend0 "npm run test -- " .. expand("%") .. "\r"<cr>

nnoremap <buffer> <leader>s :call Preserve("silent %!prettier --stdin-filepath %")<cr><esc>:w<cr>

call tcomment#type#Define('typescriptreact', { 'commentstring': '{/* %s */}' })
call tcomment#type#Define('typescriptreact_block', { 'commentstring': '{/* %s */}' })

call tcomment#type#Define('typescriptreact', { 'commentstring': '// %s' })
call tcomment#type#Define('typescriptreact_block', { 'commentstring': '/* %s */' })

call tcomment#type#Define('typescript', { 'commentstring': '// %s' })
call tcomment#type#Define('typescript_block', { 'commentstring': '/* %s */' })
