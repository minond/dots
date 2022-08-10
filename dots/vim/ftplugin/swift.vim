set shiftwidth=4
set softtabstop=4
set tabstop=4

let g:swift_build_command = get(g:, "swift_build_command", "swift build\r")
let g:swift_test_command = get(g:, "swift_test_command", "swift test\r")

nnoremap <buffer> <leader>b :w<cr>:SlimeSend0 g:swift_build_command<cr>
nnoremap <buffer> <leader>t :w<cr>:SlimeSend0 g:swift_test_command<cr>
