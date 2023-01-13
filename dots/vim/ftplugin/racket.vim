setlocal nosmartindent

nnoremap <buffer> <leader>r :w<cr>:Dispatch racket %<cr>
nnoremap <buffer> <leader>d :silent !raco docs <cword><cr>:redraw!<cr>

" split-window -h -c "#{pane_current_path}"
" nnoremap <buffer> <leader>e :w<cr>:Start racket -e '(enter! (file "%"))'<cr>
" nnoremap <buffer> <leader>e :w<cr>:SlimeSend0 '(enter! (file "%"))'<cr><cr>
