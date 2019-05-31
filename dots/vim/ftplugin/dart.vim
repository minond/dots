nnoremap <buffer> <leader>r :execute "!tmux send-key -t " . b:pane . " r"<CR><CR>
nnoremap <leader>g :ALEGoToDefinition<cr>
nnoremap <leader>d :ALEHover<cr>

" pub global activate dart_language_server
let b:ale_linters = ['language_server']
