setlocal nosmartindent

nnoremap <buffer> <leader>r :w<cr>:call RacketStartOrReloadRepl(expand("%"))<cr>
nnoremap <buffer> <leader><S-r> :w<cr>:call RacketKillRepl()<cr>
nnoremap <buffer> <leader>d :silent !raco docs <cword><cr>:redraw!<cr>

let g:racket_repl_running = 0

function! RacketStartOrReloadRepl(context)
  if g:racket_repl_running == 0
    let g:racket_repl_running = 1
    SlimeSend0 "racket\n"
  endif

  SlimeSend0 "(dynamic-enter\! \"" . a:context . "\")\n"
endfunction

function! RacketStopRepl()
  let g:racket_repl_running = 0
endfunction

function! RacketKillRepl()
  SlimeSend0 "(exit)\n"
  SlimeSend0 "exit\n"
  call RacketStopRepl()
endfunction
