let b:pane = 1
nnoremap <buffer> <leader>r :execute "!tmux send-key -t " . b:pane . " r"<CR><CR>

" pub global activate dart_language_server
let b:ale_linters = ['language_server']
